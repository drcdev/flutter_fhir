DROP TABLE visionPrescription_Prism;
DROP TABLE visionPrescription_LensSpecification;
DROP TABLE visionPrescription;
DROP TABLE verificationResult_Validator;
DROP TABLE verificationResult_Attestation;
DROP TABLE verificationResult_PrimarySource;
DROP TABLE verificationResult;
DROP TABLE valueSet_Contains;
DROP TABLE valueSet_Parameter;
DROP TABLE valueSet_Expansion;
DROP TABLE valueSet_Filter;
DROP TABLE valueSet_Designation;
DROP TABLE valueSet_Concept;
DROP TABLE valueSet_Include;
DROP TABLE valueSet_Compose;
DROP TABLE valueSet;
DROP TABLE testScript_Action2;
DROP TABLE testScript_Teardown;
DROP TABLE testScript_Action1;
DROP TABLE testScript_Test;
DROP TABLE testScript_Assert;
DROP TABLE testScript_RequestHeader;
DROP TABLE testScript_Operation;
DROP TABLE testScript_Action;
DROP TABLE testScript_Setup;
DROP TABLE testScript_Variable;
DROP TABLE testScript_Fixture;
DROP TABLE testScript_Capability;
DROP TABLE testScript_Link;
DROP TABLE testScript_Metadata;
DROP TABLE testScript_Destination;
DROP TABLE testScript_Origin;
DROP TABLE testScript;
DROP TABLE testReport_Action2;
DROP TABLE testReport_Teardown;
DROP TABLE testReport_Action1;
DROP TABLE testReport_Test;
DROP TABLE testReport_Assert;
DROP TABLE testReport_Operation;
DROP TABLE testReport_Action;
DROP TABLE testReport_Setup;
DROP TABLE testReport_Participant;
DROP TABLE testReport;
DROP TABLE terminologyCapabilities_Closure;
DROP TABLE terminologyCapabilities_Translation;
DROP TABLE terminologyCapabilities_ValidateCode;
DROP TABLE terminologyCapabilities_Parameter;
DROP TABLE terminologyCapabilities_Expansion;
DROP TABLE terminologyCapabilities_Filter;
DROP TABLE terminologyCapabilities_Version;
DROP TABLE terminologyCapabilities_CodeSystem;
DROP TABLE terminologyCapabilities_Implementation;
DROP TABLE terminologyCapabilities_Software;
DROP TABLE terminologyCapabilities;
DROP TABLE task_Output;
DROP TABLE task_Input;
DROP TABLE task_Restriction;
DROP TABLE task;
DROP TABLE supplyRequest_Parameter;
DROP TABLE supplyRequest;
DROP TABLE supplyDelivery_SuppliedItem;
DROP TABLE supplyDelivery;
DROP TABLE substanceSpecification_Relationship;
DROP TABLE substanceSpecification_Official;
DROP TABLE substanceSpecification_Name;
DROP TABLE substanceSpecification_Code;
DROP TABLE substanceSpecification_Representation;
DROP TABLE substanceSpecification_MolecularWeight;
DROP TABLE substanceSpecification_Isotope;
DROP TABLE substanceSpecification_Structure;
DROP TABLE substanceSpecification_Property;
DROP TABLE substanceSpecification_Moiety;
DROP TABLE substanceSpecification;
DROP TABLE substanceSourceMaterial_PartDescription;
DROP TABLE substanceSourceMaterial_OrganismGeneral;
DROP TABLE substanceSourceMaterial_Hybrid;
DROP TABLE substanceSourceMaterial_Author;
DROP TABLE substanceSourceMaterial_Organism;
DROP TABLE substanceSourceMaterial_FractionDescription;
DROP TABLE substanceSourceMaterial;
DROP TABLE substanceReferenceInformation_Target;
DROP TABLE substanceReferenceInformation_Classification;
DROP TABLE substanceReferenceInformation_GeneElement;
DROP TABLE substanceReferenceInformation_Gene;
DROP TABLE substanceReferenceInformation;
DROP TABLE substanceProtein_Subunit;
DROP TABLE substanceProtein;
DROP TABLE substancePolymer_StructuralRepresentation;
DROP TABLE substancePolymer_DegreeOfPolymerisation;
DROP TABLE substancePolymer_RepeatUnit;
DROP TABLE substancePolymer_Repeat;
DROP TABLE substancePolymer_StartingMaterial;
DROP TABLE substancePolymer_MonomerSet;
DROP TABLE substancePolymer;
DROP TABLE substanceNucleicAcid_Sugar;
DROP TABLE substanceNucleicAcid_Linkage;
DROP TABLE substanceNucleicAcid_Subunit;
DROP TABLE substanceNucleicAcid;
DROP TABLE substance_Ingredient;
DROP TABLE substance_Instance;
DROP TABLE substance;
DROP TABLE subscription_Channel;
DROP TABLE subscription;
DROP TABLE structureMap_Dependent;
DROP TABLE structureMap_Parameter;
DROP TABLE structureMap_Target;
DROP TABLE structureMap_Source;
DROP TABLE structureMap_Rule;
DROP TABLE structureMap_Input;
DROP TABLE structureMap_Group;
DROP TABLE structureMap_Structure;
DROP TABLE structureMap;
DROP TABLE structureDefinition_Differential;
DROP TABLE structureDefinition_Snapshot;
DROP TABLE structureDefinition_Context;
DROP TABLE structureDefinition_Mapping;
DROP TABLE structureDefinition;
DROP TABLE specimenDefinition_Handling;
DROP TABLE specimenDefinition_Additive;
DROP TABLE specimenDefinition_Container;
DROP TABLE specimenDefinition_TypeTested;
DROP TABLE specimenDefinition;
DROP TABLE specimen_Container;
DROP TABLE specimen_Processing;
DROP TABLE specimen_Collection;
DROP TABLE specimen;
DROP TABLE slot;
DROP TABLE serviceRequest;
DROP TABLE searchParameter_Component;
DROP TABLE searchParameter;
DROP TABLE schedule;
DROP TABLE riskEvidenceSynthesis_CertaintySubcomponent;
DROP TABLE riskEvidenceSynthesis_Certainty;
DROP TABLE riskEvidenceSynthesis_PrecisionEstimate;
DROP TABLE riskEvidenceSynthesis_RiskEstimate;
DROP TABLE riskEvidenceSynthesis_SampleSize;
DROP TABLE riskEvidenceSynthesis;
DROP TABLE riskAssessment_Prediction;
DROP TABLE riskAssessment;
DROP TABLE researchSubject;
DROP TABLE researchStudy_Objective;
DROP TABLE researchStudy_Arm;
DROP TABLE researchStudy;
DROP TABLE researchElementDefinition_Characteristic;
DROP TABLE researchElementDefinition;
DROP TABLE researchDefinition;
DROP TABLE requestGroup_RelatedAction;
DROP TABLE requestGroup_Condition;
DROP TABLE requestGroup_Action;
DROP TABLE requestGroup;
DROP TABLE relatedPerson_Communication;
DROP TABLE relatedPerson;
DROP TABLE questionnaireResponse_Answer;
DROP TABLE questionnaireResponse_Item;
DROP TABLE questionnaireResponse;
DROP TABLE questionnaire_Initial;
DROP TABLE questionnaire_AnswerOption;
DROP TABLE questionnaire_EnableWhen;
DROP TABLE questionnaire_Item;
DROP TABLE questionnaire;
DROP TABLE provenance_Entity;
DROP TABLE provenance_Agent;
DROP TABLE provenance;
DROP TABLE procedure_FocalDevice;
DROP TABLE procedure_Performer;
DROP TABLE "procedure";
DROP TABLE practitionerRole_NotAvailable;
DROP TABLE practitionerRole_AvailableTime;
DROP TABLE practitionerRole;
DROP TABLE practitioner_Qualification;
DROP TABLE practitioner;
DROP TABLE planDefinition_DynamicValue;
DROP TABLE planDefinition_Participant;
DROP TABLE planDefinition_RelatedAction;
DROP TABLE planDefinition_Condition;
DROP TABLE planDefinition_Action;
DROP TABLE planDefinition_Target;
DROP TABLE planDefinition_Goal;
DROP TABLE planDefinition;
DROP TABLE person_Link;
DROP TABLE person;
DROP TABLE paymentReconciliation_ProcessNote;
DROP TABLE paymentReconciliation_Detail;
DROP TABLE paymentReconciliation;
DROP TABLE paymentNotice;
DROP TABLE patient_Link;
DROP TABLE patient_Communication;
DROP TABLE patient_Contact;
DROP TABLE patient;
DROP TABLE parameters_Parameter;
DROP TABLE parameters;
DROP TABLE organizationAffiliation;
DROP TABLE organization_Contact;
DROP TABLE organization;
DROP TABLE operationOutcome_Issue;
DROP TABLE operationOutcome;
DROP TABLE operationDefinition_Overload;
DROP TABLE operationDefinition_ReferencedFrom;
DROP TABLE operationDefinition_Binding;
DROP TABLE operationDefinition_Parameter;
DROP TABLE operationDefinition;
DROP TABLE observationDefinition_QualifiedInterval;
DROP TABLE observationDefinition_QuantitativeDetails;
DROP TABLE observationDefinition;
DROP TABLE observation_Component;
DROP TABLE observation_ReferenceRange;
DROP TABLE observation;
DROP TABLE nutritionOrder_Administration;
DROP TABLE nutritionOrder_EnteralFormula;
DROP TABLE nutritionOrder_Supplement;
DROP TABLE nutritionOrder_Texture;
DROP TABLE nutritionOrder_Nutrient;
DROP TABLE nutritionOrder_OralDiet;
DROP TABLE nutritionOrder;
DROP TABLE namingSystem_UniqueId;
DROP TABLE namingSystem;
DROP TABLE molecularSequence_Inner;
DROP TABLE molecularSequence_Outer;
DROP TABLE molecularSequence_StructureVariant;
DROP TABLE molecularSequence_Repository;
DROP TABLE molecularSequence_Roc;
DROP TABLE molecularSequence_Quality;
DROP TABLE molecularSequence_Variant;
DROP TABLE molecularSequence_ReferenceSeq;
DROP TABLE molecularSequence;
DROP TABLE messageHeader_Response;
DROP TABLE messageHeader_Source;
DROP TABLE messageHeader_Destination;
DROP TABLE messageHeader;
DROP TABLE messageDefinition_AllowedResponse;
DROP TABLE messageDefinition_Focus;
DROP TABLE messageDefinition;
DROP TABLE medicinalProductUndesirableEffect;
DROP TABLE medicinalProductPharmaceutical_WithdrawalPeriod;
DROP TABLE medicinalProductPharmaceutical_TargetSpecies;
DROP TABLE medicinalProductPharmaceutical_RouteOfAdministration;
DROP TABLE medicinalProductPharmaceutical_Characteristics;
DROP TABLE medicinalProductPharmaceutical;
DROP TABLE medicinalProductPackaged_PackageItem;
DROP TABLE medicinalProductPackaged_BatchIdentifier;
DROP TABLE medicinalProductPackaged;
DROP TABLE medicinalProductManufactured;
DROP TABLE medicinalProductInteraction_Interactant;
DROP TABLE medicinalProductInteraction;
DROP TABLE medicinalProductIngredient_Substance;
DROP TABLE medicinalProductIngredient_ReferenceStrength;
DROP TABLE medicinalProductIngredient_Strength;
DROP TABLE medicinalProductIngredient_SpecifiedSubstance;
DROP TABLE medicinalProductIngredient;
DROP TABLE medicinalProductIndication_OtherTherapy;
DROP TABLE medicinalProductIndication;
DROP TABLE medicinalProductContraindication_OtherTherapy;
DROP TABLE medicinalProductContraindication;
DROP TABLE medicinalProductAuthorization_Procedure;
DROP TABLE medicinalProductAuthorization_JurisdictionalAuthorization;
DROP TABLE medicinalProductAuthorization;
DROP TABLE medicinalProduct_SpecialDesignation;
DROP TABLE medicinalProduct_ManufacturingBusinessOperation;
DROP TABLE medicinalProduct_CountryLanguage;
DROP TABLE medicinalProduct_NamePart;
DROP TABLE medicinalProduct_Name;
DROP TABLE medicinalProduct;
DROP TABLE medicationStatement;
DROP TABLE medicationRequest_Substitution;
DROP TABLE medicationRequest_InitialFill;
DROP TABLE medicationRequest_DispenseRequest;
DROP TABLE medicationRequest;
DROP TABLE medicationKnowledge_Kinetics;
DROP TABLE medicationKnowledge_MaxDispense;
DROP TABLE medicationKnowledge_Schedule;
DROP TABLE medicationKnowledge_Substitution;
DROP TABLE medicationKnowledge_Regulatory;
DROP TABLE medicationKnowledge_DrugCharacteristic;
DROP TABLE medicationKnowledge_Packaging;
DROP TABLE medicationKnowledge_MedicineClassification;
DROP TABLE medicationKnowledge_PatientCharacteristics;
DROP TABLE medicationKnowledge_Dosage;
DROP TABLE medicationKnowledge_AdministrationGuidelines;
DROP TABLE medicationKnowledge_MonitoringProgram;
DROP TABLE medicationKnowledge_Cost;
DROP TABLE medicationKnowledge_Ingredient;
DROP TABLE medicationKnowledge_Monograph;
DROP TABLE medicationKnowledge_RelatedMedicationKnowledge;
DROP TABLE medicationKnowledge;
DROP TABLE medicationDispense_Substitution;
DROP TABLE medicationDispense_Performer;
DROP TABLE medicationDispense;
DROP TABLE medicationAdministration_Dosage;
DROP TABLE medicationAdministration_Performer;
DROP TABLE medicationAdministration;
DROP TABLE medication_Batch;
DROP TABLE medication_Ingredient;
DROP TABLE medication;
DROP TABLE media;
DROP TABLE measureReport_Population1;
DROP TABLE measureReport_Component;
DROP TABLE measureReport_Stratum;
DROP TABLE measureReport_Stratifier;
DROP TABLE measureReport_Population;
DROP TABLE measureReport_Group;
DROP TABLE measureReport;
DROP TABLE measure_SupplementalData;
DROP TABLE measure_Component;
DROP TABLE measure_Stratifier;
DROP TABLE measure_Population;
DROP TABLE measure_Group;
DROP TABLE measure;
DROP TABLE location_HoursOfOperation;
DROP TABLE location_Position;
DROP TABLE "location";
DROP TABLE list_Entry;
DROP TABLE list;
DROP TABLE linkage_Item;
DROP TABLE linkage;
DROP TABLE library;
DROP TABLE invoice_PriceComponent;
DROP TABLE invoice_LineItem;
DROP TABLE invoice_Participant;
DROP TABLE invoice;
DROP TABLE insurancePlan_Cost;
DROP TABLE insurancePlan_Benefit1;
DROP TABLE insurancePlan_SpecificCost;
DROP TABLE insurancePlan_GeneralCost;
DROP TABLE insurancePlan_Plan;
DROP TABLE insurancePlan_Limit;
DROP TABLE insurancePlan_Benefit;
DROP TABLE insurancePlan_Coverage;
DROP TABLE insurancePlan_Contact;
DROP TABLE insurancePlan;
DROP TABLE implementationGuide_Page1;
DROP TABLE implementationGuide_Resource1;
DROP TABLE implementationGuide_Manifest;
DROP TABLE implementationGuide_Template;
DROP TABLE implementationGuide_Parameter;
DROP TABLE implementationGuide_Page;
DROP TABLE implementationGuide_Resource;
DROP TABLE implementationGuide_Grouping;
DROP TABLE implementationGuide_Definition;
DROP TABLE implementationGuide_Global;
DROP TABLE implementationGuide_DependsOn;
DROP TABLE implementationGuide;
DROP TABLE immunizationRecommendation_DateCriterion;
DROP TABLE immunizationRecommendation_Recommendation;
DROP TABLE immunizationRecommendation;
DROP TABLE immunizationEvaluation;
DROP TABLE immunization_ProtocolApplied;
DROP TABLE immunization_Reaction;
DROP TABLE immunization_Education;
DROP TABLE immunization_Performer;
DROP TABLE immunization;
DROP TABLE imagingStudy_Instance;
DROP TABLE imagingStudy_Performer;
DROP TABLE imagingStudy_Series;
DROP TABLE imagingStudy;
DROP TABLE healthcareService_NotAvailable;
DROP TABLE healthcareService_AvailableTime;
DROP TABLE healthcareService_Eligibility;
DROP TABLE healthcareService;
DROP TABLE guidanceResponse;
DROP TABLE group_Member;
DROP TABLE group_Characteristic;
DROP TABLE "group";
DROP TABLE graphDefinition_Compartment;
DROP TABLE graphDefinition_Target;
DROP TABLE graphDefinition_Link;
DROP TABLE graphDefinition;
DROP TABLE goal_Target;
DROP TABLE goal;
DROP TABLE flag;
DROP TABLE familyMemberHistory_Condition;
DROP TABLE familyMemberHistory;
DROP TABLE explanationOfBenefit_Financial;
DROP TABLE explanationOfBenefit_BenefitBalance;
DROP TABLE explanationOfBenefit_ProcessNote;
DROP TABLE explanationOfBenefit_Payment;
DROP TABLE explanationOfBenefit_Total;
DROP TABLE explanationOfBenefit_SubDetail1;
DROP TABLE explanationOfBenefit_Detail1;
DROP TABLE explanationOfBenefit_AddItem;
DROP TABLE explanationOfBenefit_SubDetail;
DROP TABLE explanationOfBenefit_Detail;
DROP TABLE explanationOfBenefit_Adjudication;
DROP TABLE explanationOfBenefit_Item;
DROP TABLE explanationOfBenefit_Accident;
DROP TABLE explanationOfBenefit_Insurance;
DROP TABLE explanationOfBenefit_Procedure;
DROP TABLE explanationOfBenefit_Diagnosis;
DROP TABLE explanationOfBenefit_SupportingInfo;
DROP TABLE explanationOfBenefit_CareTeam;
DROP TABLE explanationOfBenefit_Payee;
DROP TABLE explanationOfBenefit_Related;
DROP TABLE explanationOfBenefit;
DROP TABLE exampleScenario_Alternative;
DROP TABLE exampleScenario_Operation;
DROP TABLE exampleScenario_Step;
DROP TABLE exampleScenario_Process;
DROP TABLE exampleScenario_ContainedInstance;
DROP TABLE exampleScenario_Version;
DROP TABLE exampleScenario_Instance;
DROP TABLE exampleScenario_Actor;
DROP TABLE exampleScenario;
DROP TABLE evidenceVariable_Characteristic;
DROP TABLE evidenceVariable;
DROP TABLE evidence;
DROP TABLE eventDefinition;
DROP TABLE episodeOfCare_Diagnosis;
DROP TABLE episodeOfCare_StatusHistory;
DROP TABLE episodeOfCare;
DROP TABLE enrollmentResponse;
DROP TABLE enrollmentRequest;
DROP TABLE "endpoint";
DROP TABLE encounter_Location;
DROP TABLE encounter_Hospitalization;
DROP TABLE encounter_Diagnosis;
DROP TABLE encounter_Participant;
DROP TABLE encounter_ClassHistory;
DROP TABLE encounter_StatusHistory;
DROP TABLE encounter;
DROP TABLE effectEvidenceSynthesis_CertaintySubcomponent;
DROP TABLE effectEvidenceSynthesis_Certainty;
DROP TABLE effectEvidenceSynthesis_PrecisionEstimate;
DROP TABLE effectEvidenceSynthesis_EffectEstimate;
DROP TABLE effectEvidenceSynthesis_ResultsByExposure;
DROP TABLE effectEvidenceSynthesis_SampleSize;
DROP TABLE effectEvidenceSynthesis;
DROP TABLE documentReference_Context;
DROP TABLE documentReference_Content;
DROP TABLE documentReference_RelatesTo;
DROP TABLE documentReference;
DROP TABLE documentManifest_Related;
DROP TABLE documentManifest;
DROP TABLE diagnosticReport_Media;
DROP TABLE diagnosticReport;
DROP TABLE deviceUseStatement;
DROP TABLE deviceRequest_Parameter;
DROP TABLE deviceRequest;
DROP TABLE deviceMetric_Calibration;
DROP TABLE deviceMetric;
DROP TABLE deviceDefinition_Material;
DROP TABLE deviceDefinition_Property;
DROP TABLE deviceDefinition_Capability;
DROP TABLE deviceDefinition_Specialization;
DROP TABLE deviceDefinition_DeviceName;
DROP TABLE deviceDefinition_UdiDeviceIdentifier;
DROP TABLE deviceDefinition;
DROP TABLE device_Property;
DROP TABLE device_Version;
DROP TABLE device_Specialization;
DROP TABLE device_DeviceName;
DROP TABLE device_UdiCarrier;
DROP TABLE device;
DROP TABLE detectedIssue_Mitigation;
DROP TABLE detectedIssue_Evidence;
DROP TABLE detectedIssue;
DROP TABLE coverageEligibilityResponse_Error;
DROP TABLE coverageEligibilityResponse_Benefit;
DROP TABLE coverageEligibilityResponse_Item;
DROP TABLE coverageEligibilityResponse_Insurance;
DROP TABLE coverageEligibilityResponse;
DROP TABLE coverageEligibilityRequest_Diagnosis;
DROP TABLE coverageEligibilityRequest_Item;
DROP TABLE coverageEligibilityRequest_Insurance;
DROP TABLE coverageEligibilityRequest_SupportingInfo;
DROP TABLE coverageEligibilityRequest;
DROP TABLE coverage_Exception;
DROP TABLE coverage_CostToBeneficiary;
DROP TABLE coverage_Class;
DROP TABLE coverage;
DROP TABLE contract_Rule;
DROP TABLE contract_Legal;
DROP TABLE contract_Friendly;
DROP TABLE contract_Signer;
DROP TABLE contract_Subject;
DROP TABLE contract_Action;
DROP TABLE contract_ValuedItem;
DROP TABLE contract_Context;
DROP TABLE contract_Asset;
DROP TABLE contract_Answer;
DROP TABLE contract_Party;
DROP TABLE contract_Offer;
DROP TABLE contract_SecurityLabel;
DROP TABLE contract_Term;
DROP TABLE contract_ContentDefinition;
DROP TABLE contract;
DROP TABLE consent_Data;
DROP TABLE consent_Actor;
DROP TABLE consent_Provision;
DROP TABLE consent_Verification;
DROP TABLE consent_Policy;
DROP TABLE consent;
DROP TABLE condition_Evidence;
DROP TABLE condition_Stage;
DROP TABLE "condition";
DROP TABLE conceptMap_Unmapped;
DROP TABLE conceptMap_DependsOn;
DROP TABLE conceptMap_Target;
DROP TABLE conceptMap_Element;
DROP TABLE conceptMap_Group;
DROP TABLE conceptMap;
DROP TABLE composition_Section;
DROP TABLE composition_Event;
DROP TABLE composition_RelatesTo;
DROP TABLE composition_Attester;
DROP TABLE composition;
DROP TABLE compartmentDefinition_Resource;
DROP TABLE compartmentDefinition;
DROP TABLE communicationRequest_Payload;
DROP TABLE communicationRequest;
DROP TABLE communication_Payload;
DROP TABLE communication;
DROP TABLE codeSystem_Property1;
DROP TABLE codeSystem_Designation;
DROP TABLE codeSystem_Concept;
DROP TABLE codeSystem_Property;
DROP TABLE codeSystem_Filter;
DROP TABLE codeSystem;
DROP TABLE clinicalImpression_Finding;
DROP TABLE clinicalImpression_Investigation;
DROP TABLE clinicalImpression;
DROP TABLE claimResponse_Error;
DROP TABLE claimResponse_Insurance;
DROP TABLE claimResponse_ProcessNote;
DROP TABLE claimResponse_Payment;
DROP TABLE claimResponse_Total;
DROP TABLE claimResponse_SubDetail1;
DROP TABLE claimResponse_Detail1;
DROP TABLE claimResponse_AddItem;
DROP TABLE claimResponse_SubDetail;
DROP TABLE claimResponse_Detail;
DROP TABLE claimResponse_Adjudication;
DROP TABLE claimResponse_Item;
DROP TABLE claimResponse;
DROP TABLE claim_SubDetail;
DROP TABLE claim_Detail;
DROP TABLE claim_Item;
DROP TABLE claim_Accident;
DROP TABLE claim_Insurance;
DROP TABLE claim_Procedure;
DROP TABLE claim_Diagnosis;
DROP TABLE claim_SupportingInfo;
DROP TABLE claim_CareTeam;
DROP TABLE claim_Payee;
DROP TABLE claim_Related;
DROP TABLE claim;
DROP TABLE chargeItemDefinition_PriceComponent;
DROP TABLE chargeItemDefinition_PropertyGroup;
DROP TABLE chargeItemDefinition_Applicability;
DROP TABLE chargeItemDefinition;
DROP TABLE chargeItem_Performer;
DROP TABLE chargeItem;
DROP TABLE catalogEntry_RelatedEntry;
DROP TABLE catalogEntry;
DROP TABLE careTeam_Participant;
DROP TABLE careTeam;
DROP TABLE carePlan_Detail;
DROP TABLE carePlan_Activity;
DROP TABLE carePlan;
DROP TABLE capabilityStatement_Document;
DROP TABLE capabilityStatement_SupportedMessage;
DROP TABLE capabilityStatement_Endpoint;
DROP TABLE capabilityStatement_Messaging;
DROP TABLE capabilityStatement_Interaction1;
DROP TABLE capabilityStatement_Operation;
DROP TABLE capabilityStatement_SearchParam;
DROP TABLE capabilityStatement_Interaction;
DROP TABLE capabilityStatement_Resource;
DROP TABLE capabilityStatement_Security;
DROP TABLE capabilityStatement_Rest;
DROP TABLE capabilityStatement_Implementation;
DROP TABLE capabilityStatement_Software;
DROP TABLE capabilityStatement;
DROP TABLE bundle_Response;
DROP TABLE bundle_Request;
DROP TABLE bundle_Search;
DROP TABLE bundle_Entry;
DROP TABLE bundle_Link;
DROP TABLE bundle;
DROP TABLE bodyStructure;
DROP TABLE biologicallyDerivedProduct_Storage;
DROP TABLE biologicallyDerivedProduct_Manipulation;
DROP TABLE biologicallyDerivedProduct_Processing;
DROP TABLE biologicallyDerivedProduct_Collection;
DROP TABLE biologicallyDerivedProduct;
DROP TABLE binary;
DROP TABLE basic;
DROP TABLE auditEvent_Detail;
DROP TABLE auditEvent_Entity;
DROP TABLE auditEvent_Source;
DROP TABLE auditEvent_Network;
DROP TABLE auditEvent_Agent;
DROP TABLE auditEvent;
DROP TABLE appointmentResponse;
DROP TABLE appointment_Participant;
DROP TABLE appointment;
DROP TABLE allergyIntolerance_Reaction;
DROP TABLE allergyIntolerance;
DROP TABLE adverseEvent_Causality;
DROP TABLE adverseEvent_SuspectEntity;
DROP TABLE adverseEvent;
DROP TABLE activityDefinition_DynamicValue;
DROP TABLE activityDefinition_Participant;
DROP TABLE activityDefinition;
DROP TABLE account_Guarantor;
DROP TABLE account_Coverage;
DROP TABLE account;
DROP TABLE elementDefinition_Mapping;
DROP TABLE elementDefinition_Binding;
DROP TABLE elementDefinition_Constraint;
DROP TABLE elementDefinition_Example;
DROP TABLE elementDefinition_Type;
DROP TABLE elementDefinition_Base;
DROP TABLE elementDefinition_Discriminator;
DROP TABLE elementDefinition_Slicing;
DROP TABLE elementDefinition;
DROP TABLE expression;
DROP TABLE substanceAmount_ReferenceRange;
DROP TABLE substanceAmount;
DROP TABLE marketingStatus;
DROP TABLE prodCharacteristic;
DROP TABLE productShelfLife;
DROP TABLE "population";
DROP TABLE dosage_DoseAndRate;
DROP TABLE dosage;
DROP TABLE usageContext;
DROP TABLE triggerDefinition;
DROP TABLE relatedArtifact;
DROP TABLE parameterDefinition;
DROP TABLE dataRequirement_Sort;
DROP TABLE dataRequirement_DateFilter;
DROP TABLE dataRequirement_CodeFilter;
DROP TABLE dataRequirement;
DROP TABLE contributor;
DROP TABLE contactDetail;
DROP TABLE meta;
DROP TABLE timing_Repeat;
DROP TABLE timing;
DROP TABLE contactPoint;
DROP TABLE "address";
DROP TABLE humanName;
DROP TABLE "signature";
DROP TABLE sampledData;
DROP TABLE reference;
DROP TABLE ratio;
DROP TABLE "period";
DROP TABLE "range";
DROP TABLE age;
DROP TABLE money;
DROP TABLE "count";
DROP TABLE distance;
DROP TABLE duration;
DROP TABLE quantity;
DROP TABLE coding;
DROP TABLE codeableConcept;
DROP TABLE identifier;
DROP TABLE attachment;
DROP TABLE annotation;
DROP TABLE narrative;
DROP TABLE extension;
DROP TABLE element;
DROP TABLE resourceList;

CREATE TABLE resourceList(

	id TEXT PRIMARY KEY,
	resourceType TEXT

);

CREATE TABLE element(

	id TEXT PRIMARY KEY,
	extension TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE extension(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"url" TEXT,
	_url TEXT,
	valueBase64Binary TEXT,
	_valueBase64Binary TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueCanonical TEXT,
	_valueCanonical TEXT,
	valueCode TEXT,
	_valueCode TEXT,
	valueDate TEXT,
	_valueDate TEXT,
	valueDateTime TEXT,
	_valueDateTime TEXT,
	valueDecimal INTEGER,
	_valueDecimal TEXT,
	valueId TEXT,
	_valueId TEXT,
	valueInstant TEXT,
	_valueInstant TEXT,
	valueInteger INTEGER,
	_valueInteger TEXT,
	valueMarkdown TEXT,
	_valueMarkdown TEXT,
	valueOid TEXT,
	_valueOid TEXT,
	valuePositiveInt INTEGER,
	_valuePositiveInt TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueTime TEXT,
	_valueTime TEXT,
	valueUnsignedInt INTEGER,
	_valueUnsignedInt TEXT,
	valueUri TEXT,
	_valueUri TEXT,
	valueUrl TEXT,
	_valueUrl TEXT,
	valueUuid TEXT,
	_valueUuid TEXT,
	valueAddress TEXT,
	valueAge TEXT,
	valueAnnotation TEXT,
	valueAttachment TEXT,
	valueCodeableConcept TEXT,
	valueCoding TEXT,
	valueContactPoint TEXT,
	valueCount TEXT,
	valueDistance TEXT,
	valueDuration TEXT,
	valueHumanName TEXT,
	valueIdentifier TEXT,
	valueMoney TEXT,
	valuePeriod TEXT,
	valueQuantity TEXT,
	valueRange TEXT,
	valueRatio TEXT,
	valueReference TEXT,
	valueSampledData TEXT,
	valueSignature TEXT,
	valueTiming TEXT,
	valueContactDetail TEXT,
	valueContributor TEXT,
	valueDataRequirement TEXT,
	valueExpression TEXT,
	valueParameterDefinition TEXT,
	valueRelatedArtifact TEXT,
	valueTriggerDefinition TEXT,
	valueUsageContext TEXT,
	valueDosage TEXT,
	valueMeta TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCount)
		REFERENCES "count" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSignature)
		REFERENCES "signature" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE narrative(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"status" TEXT, --<code> enum: generated/extensions/additional/empty
	_status TEXT,
	div TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (div)
		REFERENCES xhtml (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE annotation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	authorReference TEXT,
	authorString TEXT,
	_authorString TEXT,
	"time" DATETIME,
	_time TEXT,
	"text" TEXT,
	_text TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authorReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authorString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_time)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE attachment(

	id TEXT PRIMARY KEY,
	extension TEXT,
	contentType TEXT,
	_contentType TEXT,
	"language" TEXT,
	_language TEXT,
	"data" TEXT,
	_data TEXT,
	"url" TEXT,
	_url TEXT,
	"size" INTEGER,
	_size TEXT,
	"hash" TEXT,
	_hash TEXT,
	title TEXT,
	_title TEXT,
	creation DATETIME,
	_creation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contentType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_data)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_size)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_hash)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_creation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE identifier(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"use" TEXT, --<code> enum: usual/official/temp/secondary/old
	_use TEXT,
	"type" TEXT,
	"system" TEXT,
	_system TEXT,
	"value" TEXT,
	_value TEXT,
	"period" TEXT,
	assigner TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (assigner)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE codeableConcept(

	id TEXT PRIMARY KEY,
	extension TEXT,
	coding TEXT,
	"text" TEXT,
	_text TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coding(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"system" TEXT,
	_system TEXT,
	"version" TEXT,
	_version TEXT,
	"code" TEXT,
	_code TEXT,
	display TEXT,
	_display TEXT,
	userSelected BOOLEAN,
	_userSelected TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_userSelected)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE quantity(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"value" REAL,
	_value TEXT,
	comparator TEXT, --<code> enum: </<=/>=/>
	_comparator TEXT,
	unit TEXT,
	_unit TEXT,
	"system" TEXT,
	_system TEXT,
	"code" TEXT,
	_code TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comparator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_unit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE duration(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"value" REAL,
	_value TEXT,
	comparator TEXT, --<code> enum: </<=/>=/>
	_comparator TEXT,
	unit TEXT,
	_unit TEXT,
	"system" TEXT,
	_system TEXT,
	"code" TEXT,
	_code TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comparator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_unit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE distance(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"value" REAL,
	_value TEXT,
	comparator TEXT, --<code> enum: </<=/>=/>
	_comparator TEXT,
	unit TEXT,
	_unit TEXT,
	"system" TEXT,
	_system TEXT,
	"code" TEXT,
	_code TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comparator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_unit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE "count"(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"value" REAL,
	_value TEXT,
	comparator TEXT, --<code> enum: </<=/>=/>
	_comparator TEXT,
	unit TEXT,
	_unit TEXT,
	"system" TEXT,
	_system TEXT,
	"code" TEXT,
	_code TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comparator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_unit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE money(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"value" REAL,
	_value TEXT,
	currency TEXT,
	_currency TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_currency)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE age(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"value" REAL,
	_value TEXT,
	comparator TEXT, --<code> enum: </<=/>=/>
	_comparator TEXT,
	unit TEXT,
	_unit TEXT,
	"system" TEXT,
	_system TEXT,
	"code" TEXT,
	_code TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comparator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_unit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE "range"(

	id TEXT PRIMARY KEY,
	extension TEXT,
	low TEXT,
	high TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (low)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (high)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE "period"(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"start" DATETIME,
	_start TEXT,
	"end" DATETIME,
	_end TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE ratio(

	id TEXT PRIMARY KEY,
	extension TEXT,
	numerator TEXT,
	denominator TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (numerator)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (denominator)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE reference(

	id TEXT PRIMARY KEY,
	extension TEXT,
	reference TEXT,
	_reference TEXT,
	"type" TEXT,
	_type TEXT,
	identifier TEXT,
	display TEXT,
	_display TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reference)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE sampledData(

	id TEXT PRIMARY KEY,
	extension TEXT,
	origin TEXT,
	"period" REAL,
	_period TEXT,
	factor REAL,
	_factor TEXT,
	lowerLimit REAL,
	_lowerLimit TEXT,
	upperLimit REAL,
	_upperLimit TEXT,
	dimensions INTEGER,
	_dimensions TEXT,
	"data" TEXT,
	_data TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (origin)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_period)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lowerLimit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_upperLimit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dimensions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_data)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE "signature"(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"type" TEXT,
	"when" DATETIME,
	_when TEXT,
	who TEXT,
	onBehalfOf TEXT,
	targetFormat TEXT,
	_targetFormat TEXT,
	sigFormat TEXT,
	_sigFormat TEXT,
	"data" TEXT,
	_data TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_when)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (who)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onBehalfOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_targetFormat)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sigFormat)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_data)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE humanName(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"use" TEXT, --<code> enum: usual/official/temp/nickname/anonymous/old/maiden
	_use TEXT,
	"text" TEXT,
	_text TEXT,
	family TEXT,
	_family TEXT,
	given TEXT,
	_given TEXT,
	prefix TEXT,
	_prefix TEXT,
	suffix TEXT,
	_suffix TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_family)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_given)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_prefix)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_suffix)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE "address"(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"use" TEXT, --<code> enum: home/work/temp/old/billing
	_use TEXT,
	"type" TEXT, --<code> enum: postal/physical/both
	_type TEXT,
	"text" TEXT,
	_text TEXT,
	line TEXT,
	_line TEXT,
	city TEXT,
	_city TEXT,
	district TEXT,
	_district TEXT,
	state TEXT,
	_state TEXT,
	postalCode TEXT,
	_postalCode TEXT,
	country TEXT,
	_country TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_line)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_city)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_district)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_state)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_postalCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_country)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contactPoint(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"system" TEXT, --<code> enum: phone/fax/email/pager/url/sms/other
	_system TEXT,
	"value" TEXT,
	_value TEXT,
	"use" TEXT, --<code> enum: home/work/temp/old/mobile
	_use TEXT,
	"rank" INTEGER,
	_rank TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rank)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE timing(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"event" DATETIME,
	_event TEXT,
	repeat TEXT,
	"code" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_event)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (repeat)
		REFERENCES timing_Repeat (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE timing_Repeat(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	boundsDuration TEXT,
	boundsRange TEXT,
	boundsPeriod TEXT,
	"count" INTEGER,
	_count TEXT,
	countMax INTEGER,
	_countMax TEXT,
	duration REAL,
	_duration TEXT,
	durationMax REAL,
	_durationMax TEXT,
	durationUnit TEXT, --<code> enum: s/min/h/d/wk/mo/a
	_durationUnit TEXT,
	frequency INTEGER,
	_frequency TEXT,
	frequencyMax INTEGER,
	_frequencyMax TEXT,
	"period" REAL,
	_period TEXT,
	periodMax REAL,
	_periodMax TEXT,
	periodUnit TEXT, --<code> enum: s/min/h/d/wk/mo/a
	_periodUnit TEXT,
	dayOfWeek TEXT,
	_dayOfWeek TEXT,
	timeOfDay TIME,
	_timeOfDay TEXT,
	"when" TEXT, --<code> enum: MORN/MORN.early/MORN.late/NOON/AFT/AFT.early/AFT.late/EVE/EVE.early/EVE.late/NIGHT/PHS/HS/WAKE/C/CM/CD/CV/AC/ACM/ACD/ACV/PC/PCM/PCD/PCV
	_when TEXT,
	offset INTEGER,
	_offset TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (boundsDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (boundsRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (boundsPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_count)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_countMax)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_duration)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_durationMax)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_durationUnit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_frequency)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_frequencyMax)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_period)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_periodMax)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_periodUnit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dayOfWeek)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timeOfDay)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_when)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_offset)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE meta(

	id TEXT PRIMARY KEY,
	extension TEXT,
	versionId TEXT,
	_versionId TEXT,
	lastUpdated DATETIME,
	_lastUpdated TEXT,
	"source" TEXT,
	_source TEXT,
	"profile" TEXT,
	"security" TEXT,
	tag TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_versionId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastUpdated)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_source)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("security")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (tag)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contactDetail(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"name" TEXT,
	_name TEXT,
	telecom TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contributor(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"type" TEXT, --<code> enum: author/editor/reviewer/endorser
	_type TEXT,
	"name" TEXT,
	_name TEXT,
	contact TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE dataRequirement(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"type" TEXT,
	_type TEXT,
	"profile" TEXT,
	subjectCodeableConcept TEXT,
	subjectReference TEXT,
	mustSupport TEXT,
	_mustSupport TEXT,
	codeFilter TEXT,
	dateFilter TEXT,
	"limit" INTEGER,
	_limit TEXT,
	sort TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mustSupport)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (codeFilter)
		REFERENCES dataRequirement_CodeFilter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dateFilter)
		REFERENCES dataRequirement_DateFilter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_limit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sort)
		REFERENCES dataRequirement_Sort (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE dataRequirement_CodeFilter(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"path" TEXT,
	_path TEXT,
	searchParam TEXT,
	_searchParam TEXT,
	valueSet TEXT,
	"code" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_searchParam)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE dataRequirement_DateFilter(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"path" TEXT,
	_path TEXT,
	searchParam TEXT,
	_searchParam TEXT,
	valueDateTime TEXT,
	_valueDateTime TEXT,
	valuePeriod TEXT,
	valueDuration TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_searchParam)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE dataRequirement_Sort(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"path" TEXT,
	_path TEXT,
	direction TEXT, --<code> enum: ascending/descending
	_direction TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_direction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE parameterDefinition(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"name" TEXT,
	_name TEXT,
	"use" TEXT,
	_use TEXT,
	"min" INTEGER,
	_min TEXT,
	"max" TEXT,
	_max TEXT,
	documentation TEXT,
	_documentation TEXT,
	"type" TEXT,
	_type TEXT,
	"profile" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE relatedArtifact(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"type" TEXT, --<code> enum: documentation/justification/citation/predecessor/successor/derived-from/depends-on/composed-of
	_type TEXT,
	label TEXT,
	_label TEXT,
	display TEXT,
	_display TEXT,
	citation TEXT,
	_citation TEXT,
	"url" TEXT,
	_url TEXT,
	document TEXT,
	resource TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_label)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_citation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (document)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE triggerDefinition(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"type" TEXT, --<code> enum: named-event/periodic/data-changed/data-added/data-modified/data-removed/data-accessed/data-access-ended
	_type TEXT,
	"name" TEXT,
	_name TEXT,
	timingTiming TEXT,
	timingReference TEXT,
	timingDate TEXT,
	_timingDate TEXT,
	timingDateTime TEXT,
	_timingDateTime TEXT,
	"data" TEXT,
	"condition" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("data")
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("condition")
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE usageContext(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"code" TEXT,
	valueCodeableConcept TEXT,
	valueQuantity TEXT,
	valueRange TEXT,
	valueReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE dosage(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	"text" TEXT,
	_text TEXT,
	additionalInstruction TEXT,
	patientInstruction TEXT,
	_patientInstruction TEXT,
	timing TEXT,
	asNeededBoolean BOOLEAN,
	_asNeededBoolean TEXT,
	asNeededCodeableConcept TEXT,
	"site" TEXT,
	route TEXT,
	"method" TEXT,
	doseAndRate TEXT,
	maxDosePerPeriod TEXT,
	maxDosePerAdministration TEXT,
	maxDosePerLifetime TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additionalInstruction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patientInstruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timing)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_asNeededBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (asNeededCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("site")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (route)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (doseAndRate)
		REFERENCES dosage_DoseAndRate (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDosePerPeriod)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDosePerAdministration)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDosePerLifetime)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE dosage_DoseAndRate(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	doseRange TEXT,
	doseQuantity TEXT,
	rateRatio TEXT,
	rateRange TEXT,
	rateQuantity TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (doseRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (doseQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE "population"(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	ageRange TEXT,
	ageCodeableConcept TEXT,
	gender TEXT,
	race TEXT,
	physiologicalCondition TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ageRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ageCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (gender)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (race)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (physiologicalCondition)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE productShelfLife(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"type" TEXT,
	"period" TEXT,
	specialPrecautionsForStorage TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specialPrecautionsForStorage)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE prodCharacteristic(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	height TEXT,
	width TEXT,
	"depth" TEXT,
	"weight" TEXT,
	nominalVolume TEXT,
	externalDiameter TEXT,
	shape TEXT,
	_shape TEXT,
	color TEXT,
	_color TEXT,
	imprint TEXT,
	_imprint TEXT,
	"image" TEXT,
	scoring TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (height)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (width)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("depth")
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("weight")
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (nominalVolume)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (externalDiameter)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_shape)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_color)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_imprint)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("image")
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (scoring)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE marketingStatus(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	country TEXT,
	jurisdiction TEXT,
	"status" TEXT,
	dateRange TEXT,
	restoreDate DATETIME,
	_restoreDate TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (country)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dateRange)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_restoreDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceAmount(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	amountQuantity TEXT,
	amountRange TEXT,
	amountString TEXT,
	_amountString TEXT,
	amountType TEXT,
	amountText TEXT,
	_amountText TEXT,
	referenceRange TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_amountString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_amountText)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceRange)
		REFERENCES substanceAmount_ReferenceRange (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceAmount_ReferenceRange(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	lowLimit TEXT,
	highLimit TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (lowLimit)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (highLimit)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE expression(

	id TEXT PRIMARY KEY,
	extension TEXT,
	"description" TEXT,
	_description TEXT,
	"name" TEXT,
	_name TEXT,
	"language" TEXT, --<code> enum: text/cql/text/fhirpath/application/x-fhir-query
	_language TEXT,
	expression TEXT,
	_expression TEXT,
	reference TEXT,
	_reference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reference)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE elementDefinition(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"path" TEXT,
	_path TEXT,
	representation TEXT, --<code> enum: xmlAttr/xmlText/typeAttr/cdaText/xhtml
	_representation TEXT,
	sliceName TEXT,
	_sliceName TEXT,
	sliceIsConstraining BOOLEAN,
	_sliceIsConstraining TEXT,
	label TEXT,
	_label TEXT,
	"code" TEXT,
	slicing TEXT,
	short TEXT,
	_short TEXT,
	"definition" TEXT,
	_definition TEXT,
	comment TEXT,
	_comment TEXT,
	requirements TEXT,
	_requirements TEXT,
	alias TEXT,
	_alias TEXT,
	"min" INTEGER,
	_min TEXT,
	"max" TEXT,
	_max TEXT,
	base TEXT,
	contentReference TEXT,
	_contentReference TEXT,
	"type" TEXT,
	defaultValueBase64Binary TEXT,
	_defaultValueBase64Binary TEXT,
	defaultValueBoolean BOOLEAN,
	_defaultValueBoolean TEXT,
	defaultValueCanonical TEXT,
	_defaultValueCanonical TEXT,
	defaultValueCode TEXT,
	_defaultValueCode TEXT,
	defaultValueDate TEXT,
	_defaultValueDate TEXT,
	defaultValueDateTime TEXT,
	_defaultValueDateTime TEXT,
	defaultValueDecimal INTEGER,
	_defaultValueDecimal TEXT,
	defaultValueId TEXT,
	_defaultValueId TEXT,
	defaultValueInstant TEXT,
	_defaultValueInstant TEXT,
	defaultValueInteger INTEGER,
	_defaultValueInteger TEXT,
	defaultValueMarkdown TEXT,
	_defaultValueMarkdown TEXT,
	defaultValueOid TEXT,
	_defaultValueOid TEXT,
	defaultValuePositiveInt INTEGER,
	_defaultValuePositiveInt TEXT,
	defaultValueString TEXT,
	_defaultValueString TEXT,
	defaultValueTime TEXT,
	_defaultValueTime TEXT,
	defaultValueUnsignedInt INTEGER,
	_defaultValueUnsignedInt TEXT,
	defaultValueUri TEXT,
	_defaultValueUri TEXT,
	defaultValueUrl TEXT,
	_defaultValueUrl TEXT,
	defaultValueUuid TEXT,
	_defaultValueUuid TEXT,
	defaultValueAddress TEXT,
	defaultValueAge TEXT,
	defaultValueAnnotation TEXT,
	defaultValueAttachment TEXT,
	defaultValueCodeableConcept TEXT,
	defaultValueCoding TEXT,
	defaultValueContactPoint TEXT,
	defaultValueCount TEXT,
	defaultValueDistance TEXT,
	defaultValueDuration TEXT,
	defaultValueHumanName TEXT,
	defaultValueIdentifier TEXT,
	defaultValueMoney TEXT,
	defaultValuePeriod TEXT,
	defaultValueQuantity TEXT,
	defaultValueRange TEXT,
	defaultValueRatio TEXT,
	defaultValueReference TEXT,
	defaultValueSampledData TEXT,
	defaultValueSignature TEXT,
	defaultValueTiming TEXT,
	defaultValueContactDetail TEXT,
	defaultValueContributor TEXT,
	defaultValueDataRequirement TEXT,
	defaultValueExpression TEXT,
	defaultValueParameterDefinition TEXT,
	defaultValueRelatedArtifact TEXT,
	defaultValueTriggerDefinition TEXT,
	defaultValueUsageContext TEXT,
	defaultValueDosage TEXT,
	defaultValueMeta TEXT,
	meaningWhenMissing TEXT,
	_meaningWhenMissing TEXT,
	orderMeaning TEXT,
	_orderMeaning TEXT,
	fixedBase64Binary TEXT,
	_fixedBase64Binary TEXT,
	fixedBoolean BOOLEAN,
	_fixedBoolean TEXT,
	fixedCanonical TEXT,
	_fixedCanonical TEXT,
	fixedCode TEXT,
	_fixedCode TEXT,
	fixedDate TEXT,
	_fixedDate TEXT,
	fixedDateTime TEXT,
	_fixedDateTime TEXT,
	fixedDecimal INTEGER,
	_fixedDecimal TEXT,
	fixedId TEXT,
	_fixedId TEXT,
	fixedInstant TEXT,
	_fixedInstant TEXT,
	fixedInteger INTEGER,
	_fixedInteger TEXT,
	fixedMarkdown TEXT,
	_fixedMarkdown TEXT,
	fixedOid TEXT,
	_fixedOid TEXT,
	fixedPositiveInt INTEGER,
	_fixedPositiveInt TEXT,
	fixedString TEXT,
	_fixedString TEXT,
	fixedTime TEXT,
	_fixedTime TEXT,
	fixedUnsignedInt INTEGER,
	_fixedUnsignedInt TEXT,
	fixedUri TEXT,
	_fixedUri TEXT,
	fixedUrl TEXT,
	_fixedUrl TEXT,
	fixedUuid TEXT,
	_fixedUuid TEXT,
	fixedAddress TEXT,
	fixedAge TEXT,
	fixedAnnotation TEXT,
	fixedAttachment TEXT,
	fixedCodeableConcept TEXT,
	fixedCoding TEXT,
	fixedContactPoint TEXT,
	fixedCount TEXT,
	fixedDistance TEXT,
	fixedDuration TEXT,
	fixedHumanName TEXT,
	fixedIdentifier TEXT,
	fixedMoney TEXT,
	fixedPeriod TEXT,
	fixedQuantity TEXT,
	fixedRange TEXT,
	fixedRatio TEXT,
	fixedReference TEXT,
	fixedSampledData TEXT,
	fixedSignature TEXT,
	fixedTiming TEXT,
	fixedContactDetail TEXT,
	fixedContributor TEXT,
	fixedDataRequirement TEXT,
	fixedExpression TEXT,
	fixedParameterDefinition TEXT,
	fixedRelatedArtifact TEXT,
	fixedTriggerDefinition TEXT,
	fixedUsageContext TEXT,
	fixedDosage TEXT,
	fixedMeta TEXT,
	patternBase64Binary TEXT,
	_patternBase64Binary TEXT,
	patternBoolean BOOLEAN,
	_patternBoolean TEXT,
	patternCanonical TEXT,
	_patternCanonical TEXT,
	patternCode TEXT,
	_patternCode TEXT,
	patternDate TEXT,
	_patternDate TEXT,
	patternDateTime TEXT,
	_patternDateTime TEXT,
	patternDecimal INTEGER,
	_patternDecimal TEXT,
	patternId TEXT,
	_patternId TEXT,
	patternInstant TEXT,
	_patternInstant TEXT,
	patternInteger INTEGER,
	_patternInteger TEXT,
	patternMarkdown TEXT,
	_patternMarkdown TEXT,
	patternOid TEXT,
	_patternOid TEXT,
	patternPositiveInt INTEGER,
	_patternPositiveInt TEXT,
	patternString TEXT,
	_patternString TEXT,
	patternTime TEXT,
	_patternTime TEXT,
	patternUnsignedInt INTEGER,
	_patternUnsignedInt TEXT,
	patternUri TEXT,
	_patternUri TEXT,
	patternUrl TEXT,
	_patternUrl TEXT,
	patternUuid TEXT,
	_patternUuid TEXT,
	patternAddress TEXT,
	patternAge TEXT,
	patternAnnotation TEXT,
	patternAttachment TEXT,
	patternCodeableConcept TEXT,
	patternCoding TEXT,
	patternContactPoint TEXT,
	patternCount TEXT,
	patternDistance TEXT,
	patternDuration TEXT,
	patternHumanName TEXT,
	patternIdentifier TEXT,
	patternMoney TEXT,
	patternPeriod TEXT,
	patternQuantity TEXT,
	patternRange TEXT,
	patternRatio TEXT,
	patternReference TEXT,
	patternSampledData TEXT,
	patternSignature TEXT,
	patternTiming TEXT,
	patternContactDetail TEXT,
	patternContributor TEXT,
	patternDataRequirement TEXT,
	patternExpression TEXT,
	patternParameterDefinition TEXT,
	patternRelatedArtifact TEXT,
	patternTriggerDefinition TEXT,
	patternUsageContext TEXT,
	patternDosage TEXT,
	patternMeta TEXT,
	example TEXT,
	minValueDate TEXT,
	_minValueDate TEXT,
	minValueDateTime TEXT,
	_minValueDateTime TEXT,
	minValueInstant TEXT,
	_minValueInstant TEXT,
	minValueTime TEXT,
	_minValueTime TEXT,
	minValueDecimal INTEGER,
	_minValueDecimal TEXT,
	minValueInteger INTEGER,
	_minValueInteger TEXT,
	minValuePositiveInt INTEGER,
	_minValuePositiveInt TEXT,
	minValueUnsignedInt INTEGER,
	_minValueUnsignedInt TEXT,
	minValueQuantity TEXT,
	maxValueDate TEXT,
	_maxValueDate TEXT,
	maxValueDateTime TEXT,
	_maxValueDateTime TEXT,
	maxValueInstant TEXT,
	_maxValueInstant TEXT,
	maxValueTime TEXT,
	_maxValueTime TEXT,
	maxValueDecimal INTEGER,
	_maxValueDecimal TEXT,
	maxValueInteger INTEGER,
	_maxValueInteger TEXT,
	maxValuePositiveInt INTEGER,
	_maxValuePositiveInt TEXT,
	maxValueUnsignedInt INTEGER,
	_maxValueUnsignedInt TEXT,
	maxValueQuantity TEXT,
	"maxLength" INTEGER,
	_maxLength TEXT,
	"condition" TEXT,
	_condition TEXT,
	"constraint" TEXT,
	mustSupport BOOLEAN,
	_mustSupport TEXT,
	isModifier BOOLEAN,
	_isModifier TEXT,
	isModifierReason TEXT,
	_isModifierReason TEXT,
	isSummary BOOLEAN,
	_isSummary TEXT,
	"binding" TEXT,
	mapping TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_representation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sliceName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sliceIsConstraining)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_label)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (slicing)
		REFERENCES elementDefinition_Slicing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_short)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requirements)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_alias)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (base)
		REFERENCES elementDefinition_Base (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contentReference)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES elementDefinition_Type (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueCount)
		REFERENCES "count" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValuePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueSignature)
		REFERENCES "signature" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_meaningWhenMissing)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_orderMeaning)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedCount)
		REFERENCES "count" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedSignature)
		REFERENCES "signature" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternCount)
		REFERENCES "count" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternSignature)
		REFERENCES "signature" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (example)
		REFERENCES elementDefinition_Example (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (minValueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxValueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxLength)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_condition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("constraint")
		REFERENCES elementDefinition_Constraint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mustSupport)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isModifier)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isModifierReason)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isSummary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("binding")
		REFERENCES elementDefinition_Binding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (mapping)
		REFERENCES elementDefinition_Mapping (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE elementDefinition_Slicing(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	discriminator TEXT,
	"description" TEXT,
	_description TEXT,
	ordered BOOLEAN,
	_ordered TEXT,
	rules TEXT, --<code> enum: closed/open/openAtEnd
	_rules TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (discriminator)
		REFERENCES elementDefinition_Discriminator (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_ordered)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE elementDefinition_Discriminator(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT, --<code> enum: value/exists/pattern/type/profile
	_type TEXT,
	"path" TEXT,
	_path TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE elementDefinition_Base(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"path" TEXT,
	_path TEXT,
	"min" INTEGER,
	_min TEXT,
	"max" TEXT,
	_max TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE elementDefinition_Type(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	_code TEXT,
	"profile" TEXT,
	targetProfile TEXT,
	aggregation TEXT, --<code> enum: contained/referenced/bundled
	_aggregation TEXT,
	versioning TEXT, --<code> enum: either/independent/specific
	_versioning TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_aggregation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_versioning)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE elementDefinition_Example(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	label TEXT,
	_label TEXT,
	valueBase64Binary TEXT,
	_valueBase64Binary TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueCanonical TEXT,
	_valueCanonical TEXT,
	valueCode TEXT,
	_valueCode TEXT,
	valueDate TEXT,
	_valueDate TEXT,
	valueDateTime TEXT,
	_valueDateTime TEXT,
	valueDecimal INTEGER,
	_valueDecimal TEXT,
	valueId TEXT,
	_valueId TEXT,
	valueInstant TEXT,
	_valueInstant TEXT,
	valueInteger INTEGER,
	_valueInteger TEXT,
	valueMarkdown TEXT,
	_valueMarkdown TEXT,
	valueOid TEXT,
	_valueOid TEXT,
	valuePositiveInt INTEGER,
	_valuePositiveInt TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueTime TEXT,
	_valueTime TEXT,
	valueUnsignedInt INTEGER,
	_valueUnsignedInt TEXT,
	valueUri TEXT,
	_valueUri TEXT,
	valueUrl TEXT,
	_valueUrl TEXT,
	valueUuid TEXT,
	_valueUuid TEXT,
	valueAddress TEXT,
	valueAge TEXT,
	valueAnnotation TEXT,
	valueAttachment TEXT,
	valueCodeableConcept TEXT,
	valueCoding TEXT,
	valueContactPoint TEXT,
	valueCount TEXT,
	valueDistance TEXT,
	valueDuration TEXT,
	valueHumanName TEXT,
	valueIdentifier TEXT,
	valueMoney TEXT,
	valuePeriod TEXT,
	valueQuantity TEXT,
	valueRange TEXT,
	valueRatio TEXT,
	valueReference TEXT,
	valueSampledData TEXT,
	valueSignature TEXT,
	valueTiming TEXT,
	valueContactDetail TEXT,
	valueContributor TEXT,
	valueDataRequirement TEXT,
	valueExpression TEXT,
	valueParameterDefinition TEXT,
	valueRelatedArtifact TEXT,
	valueTriggerDefinition TEXT,
	valueUsageContext TEXT,
	valueDosage TEXT,
	valueMeta TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_label)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCount)
		REFERENCES "count" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSignature)
		REFERENCES "signature" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE elementDefinition_Constraint(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"key" TEXT,
	_key TEXT,
	requirements TEXT,
	_requirements TEXT,
	severity TEXT, --<code> enum: error/warning
	_severity TEXT,
	human TEXT,
	_human TEXT,
	expression TEXT,
	_expression TEXT,
	xpath TEXT,
	_xpath TEXT,
	"source" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_key)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requirements)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_severity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_human)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_xpath)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE elementDefinition_Binding(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	strength TEXT, --<code> enum: required/extensible/preferred/example
	_strength TEXT,
	"description" TEXT,
	_description TEXT,
	valueSet TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_strength)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE elementDefinition_Mapping(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"identity" TEXT,
	_identity TEXT,
	"language" TEXT,
	_language TEXT,
	map TEXT,
	_map TEXT,
	comment TEXT,
	_comment TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_identity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_map)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE account(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: active/inactive/entered-in-error/on-hold/unknown
	_status TEXT,
	"type" TEXT,
	"name" TEXT,
	_name TEXT,
	"subject" TEXT,
	servicePeriod TEXT,
	coverage TEXT,
	"owner" TEXT,
	"description" TEXT,
	_description TEXT,
	guarantor TEXT,
	partOf TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES account_Coverage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("owner")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (guarantor)
		REFERENCES account_Guarantor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE account_Coverage(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	coverage TEXT,
	"priority" INTEGER,
	_priority TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE account_Guarantor(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	party TEXT,
	onHold BOOLEAN,
	_onHold TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (party)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onHold)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE activityDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	subtitle TEXT,
	_subtitle TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	subjectCodeableConcept TEXT,
	subjectReference TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	"usage" TEXT,
	_usage TEXT,
	copyright TEXT,
	_copyright TEXT,
	approvalDate DATE,
	_approvalDate TEXT,
	lastReviewDate DATE,
	_lastReviewDate TEXT,
	effectivePeriod TEXT,
	topic TEXT,
	author TEXT,
	editor TEXT,
	reviewer TEXT,
	endorser TEXT,
	relatedArtifact TEXT,
	library TEXT,
	kind TEXT,
	_kind TEXT,
	"profile" TEXT,
	"code" TEXT,
	intent TEXT,
	_intent TEXT,
	"priority" TEXT,
	_priority TEXT,
	doNotPerform BOOLEAN,
	_doNotPerform TEXT,
	timingTiming TEXT,
	timingDateTime TEXT,
	_timingDateTime TEXT,
	timingAge TEXT,
	timingPeriod TEXT,
	timingRange TEXT,
	timingDuration TEXT,
	"location" TEXT,
	participant TEXT,
	productReference TEXT,
	productCodeableConcept TEXT,
	quantity TEXT,
	dosage TEXT,
	bodySite TEXT,
	specimenRequirement TEXT,
	observationRequirement TEXT,
	observationResultRequirement TEXT,
	transform TEXT,
	dynamicValue TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (editor)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reviewer)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (endorser)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doNotPerform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participant)
		REFERENCES activityDefinition_Participant (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specimenRequirement)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (observationRequirement)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (observationResultRequirement)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dynamicValue)
		REFERENCES activityDefinition_DynamicValue (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE activityDefinition_Participant(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	_type TEXT,
	"role" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE activityDefinition_DynamicValue(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"path" TEXT,
	_path TEXT,
	expression TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE adverseEvent(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	actuality TEXT, --<code> enum: actual/potential
	_actuality TEXT,
	category TEXT,
	"event" TEXT,
	"subject" TEXT,
	encounter TEXT,
	"date" DATETIME,
	_date TEXT,
	detected DATETIME,
	_detected TEXT,
	recordedDate DATETIME,
	_recordedDate TEXT,
	resultingCondition TEXT,
	"location" TEXT,
	seriousness TEXT,
	severity TEXT,
	outcome TEXT,
	recorder TEXT,
	contributor TEXT,
	suspectEntity TEXT,
	subjectMedicalHistory TEXT,
	referenceDocument TEXT,
	study TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_actuality)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("event")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detected)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recordedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (resultingCondition)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (seriousness)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (severity)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recorder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contributor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (suspectEntity)
		REFERENCES adverseEvent_SuspectEntity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectMedicalHistory)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceDocument)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (study)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE adverseEvent_SuspectEntity(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"instance" TEXT,
	causality TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("instance")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (causality)
		REFERENCES adverseEvent_Causality (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE adverseEvent_Causality(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	assessment TEXT,
	productRelatedness TEXT,
	_productRelatedness TEXT,
	author TEXT,
	"method" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (assessment)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_productRelatedness)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE allergyIntolerance(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	clinicalStatus TEXT,
	verificationStatus TEXT,
	"type" TEXT, --<code> enum: allergy/intolerance
	_type TEXT,
	category TEXT, --<code> enum: food/medication/environment/biologic
	_category TEXT,
	criticality TEXT, --<code> enum: low/high/unable-to-assess
	_criticality TEXT,
	"code" TEXT,
	patient TEXT,
	encounter TEXT,
	onsetDateTime TEXT,
	_onsetDateTime TEXT,
	onsetAge TEXT,
	onsetPeriod TEXT,
	onsetRange TEXT,
	onsetString TEXT,
	_onsetString TEXT,
	recordedDate DATETIME,
	_recordedDate TEXT,
	recorder TEXT,
	asserter TEXT,
	lastOccurrence DATETIME,
	_lastOccurrence TEXT,
	note TEXT,
	reaction TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (clinicalStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (verificationStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_category)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_criticality)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onsetDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onsetString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recordedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recorder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (asserter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastOccurrence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reaction)
		REFERENCES allergyIntolerance_Reaction (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE allergyIntolerance_Reaction(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	substance TEXT,
	manifestation TEXT,
	"description" TEXT,
	_description TEXT,
	onset DATETIME,
	_onset TEXT,
	severity TEXT, --<code> enum: mild/moderate/severe
	_severity TEXT,
	exposureRoute TEXT,
	note TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substance)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manifestation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onset)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_severity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposureRoute)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE appointment(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: proposed/pending/booked/arrived/fulfilled/cancelled/noshow/entered-in-error/checked-in/waitlist
	_status TEXT,
	cancelationReason TEXT,
	serviceCategory TEXT,
	serviceType TEXT,
	specialty TEXT,
	appointmentType TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	"priority" INTEGER,
	_priority TEXT,
	"description" TEXT,
	_description TEXT,
	supportingInformation TEXT,
	"start" DATETIME,
	_start TEXT,
	"end" DATETIME,
	_end TEXT,
	minutesDuration INTEGER,
	_minutesDuration TEXT,
	slot TEXT,
	created DATETIME,
	_created TEXT,
	comment TEXT,
	_comment TEXT,
	patientInstruction TEXT,
	_patientInstruction TEXT,
	basedOn TEXT,
	participant TEXT,
	requestedPeriod TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (cancelationReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (serviceCategory)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (serviceType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specialty)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (appointmentType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingInformation)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minutesDuration)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (slot)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patientInstruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participant)
		REFERENCES appointment_Participant (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestedPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE appointment_Participant(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	actor TEXT,
	required TEXT, --<code> enum: required/optional/information-only
	_required TEXT,
	"status" TEXT, --<code> enum: accepted/declined/tentative/needs-action
	_status TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_required)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE appointmentResponse(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	appointment TEXT,
	"start" DATETIME,
	_start TEXT,
	"end" DATETIME,
	_end TEXT,
	participantType TEXT,
	actor TEXT,
	participantStatus TEXT,
	_participantStatus TEXT,
	comment TEXT,
	_comment TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (appointment)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_participantStatus)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE auditEvent(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	subtype TEXT,
	"action" TEXT, --<code> enum: C/R/U/D/E
	_action TEXT,
	"period" TEXT,
	recorded DATETIME,
	_recorded TEXT,
	outcome TEXT, --<code> enum: 0/4/8/12
	_outcome TEXT,
	outcomeDesc TEXT,
	_outcomeDesc TEXT,
	purposeOfEvent TEXT,
	agent TEXT,
	"source" TEXT,
	entity TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subtype)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_action)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recorded)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcome)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcomeDesc)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (purposeOfEvent)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (agent)
		REFERENCES auditEvent_Agent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES auditEvent_Source (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (entity)
		REFERENCES auditEvent_Entity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE auditEvent_Agent(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	"role" TEXT,
	who TEXT,
	altId TEXT,
	_altId TEXT,
	"name" TEXT,
	_name TEXT,
	requestor BOOLEAN,
	_requestor TEXT,
	"location" TEXT,
	"policy" TEXT,
	_policy TEXT,
	media TEXT,
	network TEXT,
	purposeOfUse TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (who)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_altId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requestor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_policy)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (media)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (network)
		REFERENCES auditEvent_Network (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (purposeOfUse)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE auditEvent_Network(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"address" TEXT,
	_address TEXT,
	"type" TEXT, --<code> enum: 1/2/3/4/5
	_type TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_address)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE auditEvent_Source(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"site" TEXT,
	_site TEXT,
	observer TEXT,
	"type" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_site)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (observer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE auditEvent_Entity(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	what TEXT,
	"type" TEXT,
	"role" TEXT,
	lifecycle TEXT,
	securityLabel TEXT,
	"name" TEXT,
	_name TEXT,
	"description" TEXT,
	_description TEXT,
	query TEXT,
	_query TEXT,
	detail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (what)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (lifecycle)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (securityLabel)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_query)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES auditEvent_Detail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE auditEvent_Detail(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	_type TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueBase64Binary TEXT,
	_valueBase64Binary TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE basic(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"code" TEXT,
	"subject" TEXT,
	created DATE,
	_created TEXT,
	author TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE binary(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	contentType TEXT,
	_contentType TEXT,
	securityContext TEXT,
	"data" TEXT,
	_data TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contentType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (securityContext)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_data)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE biologicallyDerivedProduct(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	productCategory TEXT, --<code> enum: organ/tissue/fluid/cells/biologicalAgent
	_productCategory TEXT,
	productCode TEXT,
	"status" TEXT, --<code> enum: available/unavailable
	_status TEXT,
	request TEXT,
	quantity INTEGER,
	_quantity TEXT,
	parent TEXT,
	collection TEXT,
	processing TEXT,
	manipulation TEXT,
	storage TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_productCategory)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_quantity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (parent)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (collection)
		REFERENCES biologicallyDerivedProduct_Collection (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (processing)
		REFERENCES biologicallyDerivedProduct_Processing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manipulation)
		REFERENCES biologicallyDerivedProduct_Manipulation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (storage)
		REFERENCES biologicallyDerivedProduct_Storage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE biologicallyDerivedProduct_Collection(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	collector TEXT,
	"source" TEXT,
	collectedDateTime TEXT,
	_collectedDateTime TEXT,
	collectedPeriod TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (collector)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_collectedDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (collectedPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE biologicallyDerivedProduct_Processing(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	"procedure" TEXT,
	additive TEXT,
	timeDateTime TEXT,
	_timeDateTime TEXT,
	timePeriod TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("procedure")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additive)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timeDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE biologicallyDerivedProduct_Manipulation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	timeDateTime TEXT,
	_timeDateTime TEXT,
	timePeriod TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timeDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE biologicallyDerivedProduct_Storage(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	temperature REAL,
	_temperature TEXT,
	scale TEXT, --<code> enum: farenheit/celsius/kelvin
	_scale TEXT,
	duration TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_temperature)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_scale)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (duration)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE bodyStructure(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	active BOOLEAN,
	_active TEXT,
	morphology TEXT,
	"location" TEXT,
	locationQualifier TEXT,
	"description" TEXT,
	_description TEXT,
	"image" TEXT,
	patient TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (morphology)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationQualifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("image")
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE bundle(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	identifier TEXT,
	"type" TEXT, --<code> enum: document/message/transaction/transaction-response/batch/batch-response/history/searchset/collection
	_type TEXT,
	"timestamp" DATETIME,
	_timestamp TEXT,
	total INTEGER,
	_total TEXT,
	link TEXT,
	entry TEXT,
	"signature" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timestamp)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_total)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (link)
		REFERENCES bundle_Link (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (entry)
		REFERENCES bundle_Entry (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("signature")
		REFERENCES "signature" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE bundle_Link(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	relation TEXT,
	_relation TEXT,
	"url" TEXT,
	_url TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_relation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE bundle_Entry(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	link TEXT,
	fullUrl TEXT,
	_fullUrl TEXT,
	resource TEXT,
	"search" TEXT,
	request TEXT,
	response TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (link)
		REFERENCES bundle_Link (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fullUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (resource)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("search")
		REFERENCES bundle_Search (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES bundle_Request (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (response)
		REFERENCES bundle_Response (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE bundle_Search(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	mode TEXT, --<code> enum: match/include/outcome
	_mode TEXT,
	score REAL,
	_score TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_score)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE bundle_Request(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"method" TEXT, --<code> enum: GET/HEAD/POST/PUT/DELETE/PATCH
	_method TEXT,
	"url" TEXT,
	_url TEXT,
	ifNoneMatch TEXT,
	_ifNoneMatch TEXT,
	ifModifiedSince DATETIME,
	_ifModifiedSince TEXT,
	ifMatch TEXT,
	_ifMatch TEXT,
	ifNoneExist TEXT,
	_ifNoneExist TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_method)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_ifNoneMatch)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_ifModifiedSince)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_ifMatch)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_ifNoneExist)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE bundle_Response(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"status" TEXT,
	_status TEXT,
	"location" TEXT,
	_location TEXT,
	etag TEXT,
	_etag TEXT,
	lastModified DATETIME,
	_lastModified TEXT,
	outcome TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_location)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_etag)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastModified)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	copyright TEXT,
	_copyright TEXT,
	kind TEXT, --<code> enum: instance/capability/requirements
	_kind TEXT,
	instantiates TEXT,
	imports TEXT,
	software TEXT,
	"implementation" TEXT,
	fhirVersion TEXT, --<code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1
	_fhirVersion TEXT,
	format TEXT,
	_format TEXT,
	patchFormat TEXT,
	_patchFormat TEXT,
	implementationGuide TEXT,
	rest TEXT,
	messaging TEXT,
	document TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (software)
		REFERENCES capabilityStatement_Software (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("implementation")
		REFERENCES capabilityStatement_Implementation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fhirVersion)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_format)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patchFormat)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rest)
		REFERENCES capabilityStatement_Rest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (messaging)
		REFERENCES capabilityStatement_Messaging (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (document)
		REFERENCES capabilityStatement_Document (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement_Software(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"version" TEXT,
	_version TEXT,
	releaseDate DATETIME,
	_releaseDate TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_releaseDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement_Implementation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	"url" TEXT,
	_url TEXT,
	custodian TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (custodian)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement_Rest(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	mode TEXT, --<code> enum: client/server
	_mode TEXT,
	documentation TEXT,
	_documentation TEXT,
	"security" TEXT,
	resource TEXT,
	interaction TEXT,
	searchParam TEXT,
	operation TEXT,
	compartment TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("security")
		REFERENCES capabilityStatement_Security (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (resource)
		REFERENCES capabilityStatement_Resource (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (interaction)
		REFERENCES capabilityStatement_Interaction1 (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (searchParam)
		REFERENCES capabilityStatement_SearchParam (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (operation)
		REFERENCES capabilityStatement_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement_Security(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	cors BOOLEAN,
	_cors TEXT,
	service TEXT,
	"description" TEXT,
	_description TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_cors)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (service)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement_Resource(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	_type TEXT,
	"profile" TEXT,
	supportedProfile TEXT,
	documentation TEXT,
	_documentation TEXT,
	interaction TEXT,
	versioning TEXT, --<code> enum: no-version/versioned/versioned-update
	_versioning TEXT,
	readHistory BOOLEAN,
	_readHistory TEXT,
	updateCreate BOOLEAN,
	_updateCreate TEXT,
	conditionalCreate BOOLEAN,
	_conditionalCreate TEXT,
	conditionalRead TEXT, --<code> enum: not-supported/modified-since/not-match/full-support
	_conditionalRead TEXT,
	conditionalUpdate BOOLEAN,
	_conditionalUpdate TEXT,
	conditionalDelete TEXT, --<code> enum: not-supported/single/multiple
	_conditionalDelete TEXT,
	referencePolicy TEXT, --<code> enum: literal/logical/resolves/enforced/local
	_referencePolicy TEXT,
	searchInclude TEXT,
	_searchInclude TEXT,
	searchRevInclude TEXT,
	_searchRevInclude TEXT,
	searchParam TEXT,
	operation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (interaction)
		REFERENCES capabilityStatement_Interaction (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_versioning)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_readHistory)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_updateCreate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_conditionalCreate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_conditionalRead)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_conditionalUpdate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_conditionalDelete)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_referencePolicy)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_searchInclude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_searchRevInclude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (searchParam)
		REFERENCES capabilityStatement_SearchParam (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (operation)
		REFERENCES capabilityStatement_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement_Interaction(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT, --<code> enum: read/vread/update/patch/delete/history-instance/history-type/create/search-type
	_code TEXT,
	documentation TEXT,
	_documentation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement_SearchParam(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"definition" TEXT,
	"type" TEXT, --<code> enum: number/date/string/token/reference/composite/quantity/uri/special
	_type TEXT,
	documentation TEXT,
	_documentation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement_Operation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"definition" TEXT,
	documentation TEXT,
	_documentation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement_Interaction1(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT, --<code> enum: transaction/batch/search-system/history-system
	_code TEXT,
	documentation TEXT,
	_documentation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement_Messaging(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"endpoint" TEXT,
	reliableCache INTEGER,
	_reliableCache TEXT,
	documentation TEXT,
	_documentation TEXT,
	supportedMessage TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("endpoint")
		REFERENCES capabilityStatement_Endpoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reliableCache)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportedMessage)
		REFERENCES capabilityStatement_SupportedMessage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement_Endpoint(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	protocol TEXT,
	"address" TEXT,
	_address TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (protocol)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_address)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement_SupportedMessage(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	mode TEXT, --<code> enum: sender/receiver
	_mode TEXT,
	"definition" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE capabilityStatement_Document(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	mode TEXT, --<code> enum: producer/consumer
	_mode TEXT,
	documentation TEXT,
	_documentation TEXT,
	"profile" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE carePlan(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	instantiatesCanonical TEXT,
	instantiatesUri TEXT,
	_instantiatesUri TEXT,
	basedOn TEXT,
	replaces TEXT,
	partOf TEXT,
	"status" TEXT,
	_status TEXT,
	intent TEXT,
	_intent TEXT,
	category TEXT,
	title TEXT,
	_title TEXT,
	"description" TEXT,
	_description TEXT,
	"subject" TEXT,
	encounter TEXT,
	"period" TEXT,
	created DATETIME,
	_created TEXT,
	author TEXT,
	contributor TEXT,
	careTeam TEXT,
	addresses TEXT,
	supportingInfo TEXT,
	goal TEXT,
	activity TEXT,
	note TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (replaces)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contributor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (careTeam)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (addresses)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingInfo)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (goal)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (activity)
		REFERENCES carePlan_Activity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE carePlan_Activity(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	outcomeCodeableConcept TEXT,
	outcomeReference TEXT,
	progress TEXT,
	reference TEXT,
	detail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcomeCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcomeReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (progress)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES carePlan_Detail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE carePlan_Detail(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	kind TEXT,
	_kind TEXT,
	instantiatesCanonical TEXT,
	instantiatesUri TEXT,
	_instantiatesUri TEXT,
	"code" TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	goal TEXT,
	"status" TEXT, --<code> enum: not-started/scheduled/in-progress/on-hold/completed/cancelled/stopped/unknown/entered-in-error
	_status TEXT,
	statusReason TEXT,
	doNotPerform BOOLEAN,
	_doNotPerform TEXT,
	scheduledTiming TEXT,
	scheduledPeriod TEXT,
	scheduledString TEXT,
	_scheduledString TEXT,
	"location" TEXT,
	performer TEXT,
	productCodeableConcept TEXT,
	productReference TEXT,
	dailyAmount TEXT,
	quantity TEXT,
	"description" TEXT,
	_description TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (goal)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doNotPerform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (scheduledTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (scheduledPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_scheduledString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dailyAmount)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE careTeam(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: proposed/active/suspended/inactive/entered-in-error
	_status TEXT,
	category TEXT,
	"name" TEXT,
	_name TEXT,
	"subject" TEXT,
	encounter TEXT,
	"period" TEXT,
	participant TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	managingOrganization TEXT,
	telecom TEXT,
	note TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participant)
		REFERENCES careTeam_Participant (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (managingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE careTeam_Participant(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"role" TEXT,
	"member" TEXT,
	onBehalfOf TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("member")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onBehalfOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE catalogEntry(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"type" TEXT,
	orderable BOOLEAN,
	_orderable TEXT,
	referencedItem TEXT,
	additionalIdentifier TEXT,
	classification TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	validityPeriod TEXT,
	validTo DATETIME,
	_validTo TEXT,
	lastUpdated DATETIME,
	_lastUpdated TEXT,
	additionalCharacteristic TEXT,
	additionalClassification TEXT,
	relatedEntry TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_orderable)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referencedItem)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additionalIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (classification)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validityPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_validTo)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastUpdated)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additionalCharacteristic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additionalClassification)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedEntry)
		REFERENCES catalogEntry_RelatedEntry (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE catalogEntry_RelatedEntry(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	relationtype TEXT, --<code> enum: triggers/is-replaced-by
	_relationtype TEXT,
	item TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_relationtype)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE chargeItem(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	definitionUri TEXT,
	_definitionUri TEXT,
	definitionCanonical TEXT,
	"status" TEXT, --<code> enum: planned/billable/not-billable/aborted/billed/entered-in-error/unknown
	_status TEXT,
	partOf TEXT,
	"code" TEXT,
	"subject" TEXT,
	context TEXT,
	occurrenceDateTime TEXT,
	_occurrenceDateTime TEXT,
	occurrencePeriod TEXT,
	occurrenceTiming TEXT,
	performer TEXT,
	performingOrganization TEXT,
	requestingOrganization TEXT,
	costCenter TEXT,
	quantity TEXT,
	bodysite TEXT,
	factorOverride REAL,
	_factorOverride TEXT,
	priceOverride TEXT,
	overrideReason TEXT,
	_overrideReason TEXT,
	enterer TEXT,
	enteredDate DATETIME,
	_enteredDate TEXT,
	reason TEXT,
	service TEXT,
	productReference TEXT,
	productCodeableConcept TEXT,
	account TEXT,
	note TEXT,
	supportingInformation TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definitionUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrenceTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES chargeItem_Performer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (costCenter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodysite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factorOverride)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (priceOverride)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_overrideReason)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enterer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_enteredDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (service)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (account)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingInformation)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE chargeItem_Performer(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"function" TEXT,
	actor TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("function")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE chargeItemDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	title TEXT,
	_title TEXT,
	derivedFromUri TEXT,
	_derivedFromUri TEXT,
	partOf TEXT,
	replaces TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	copyright TEXT,
	_copyright TEXT,
	approvalDate DATE,
	_approvalDate TEXT,
	lastReviewDate DATE,
	_lastReviewDate TEXT,
	effectivePeriod TEXT,
	"code" TEXT,
	"instance" TEXT,
	applicability TEXT,
	propertyGroup TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_derivedFromUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("instance")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (applicability)
		REFERENCES chargeItemDefinition_Applicability (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (propertyGroup)
		REFERENCES chargeItemDefinition_PropertyGroup (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE chargeItemDefinition_Applicability(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	"language" TEXT,
	_language TEXT,
	expression TEXT,
	_expression TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE chargeItemDefinition_PropertyGroup(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	applicability TEXT,
	priceComponent TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (applicability)
		REFERENCES chargeItemDefinition_Applicability (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (priceComponent)
		REFERENCES chargeItemDefinition_PriceComponent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE chargeItemDefinition_PriceComponent(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	_type TEXT,
	"code" TEXT,
	factor REAL,
	_factor TEXT,
	amount TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claim(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	"type" TEXT,
	subType TEXT,
	"use" TEXT, --<code> enum: claim/preauthorization/predetermination
	_use TEXT,
	patient TEXT,
	billablePeriod TEXT,
	created DATETIME,
	_created TEXT,
	enterer TEXT,
	insurer TEXT,
	"provider" TEXT,
	"priority" TEXT,
	fundsReserve TEXT,
	related TEXT,
	prescription TEXT,
	originalPrescription TEXT,
	payee TEXT,
	referral TEXT,
	facility TEXT,
	careTeam TEXT,
	supportingInfo TEXT,
	diagnosis TEXT,
	"procedure" TEXT,
	insurance TEXT,
	accident TEXT,
	item TEXT,
	total TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (billablePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enterer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("priority")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fundsReserve)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (related)
		REFERENCES claim_Related (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (prescription)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (originalPrescription)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payee)
		REFERENCES claim_Payee (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referral)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (facility)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (careTeam)
		REFERENCES claim_CareTeam (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingInfo)
		REFERENCES claim_SupportingInfo (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosis)
		REFERENCES claim_Diagnosis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("procedure")
		REFERENCES claim_Procedure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurance)
		REFERENCES claim_Insurance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (accident)
		REFERENCES claim_Accident (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES claim_Item (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (total)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claim_Related(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	claim TEXT,
	relationship TEXT,
	reference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (claim)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claim_Payee(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	party TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (party)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claim_CareTeam(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	"provider" TEXT,
	responsible BOOLEAN,
	_responsible TEXT,
	"role" TEXT,
	qualification TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_responsible)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (qualification)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claim_SupportingInfo(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	category TEXT,
	"code" TEXT,
	timingDate TEXT,
	_timingDate TEXT,
	timingPeriod TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueQuantity TEXT,
	valueAttachment TEXT,
	valueReference TEXT,
	reason TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claim_Diagnosis(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	diagnosisCodeableConcept TEXT,
	diagnosisReference TEXT,
	"type" TEXT,
	onAdmission TEXT,
	packageCode TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosisCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosisReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onAdmission)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (packageCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claim_Procedure(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	"type" TEXT,
	"date" DATETIME,
	_date TEXT,
	procedureCodeableConcept TEXT,
	procedureReference TEXT,
	udi TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (procedureCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (procedureReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (udi)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claim_Insurance(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	focal BOOLEAN,
	_focal TEXT,
	identifier TEXT,
	coverage TEXT,
	businessArrangement TEXT,
	_businessArrangement TEXT,
	preAuthRef TEXT,
	_preAuthRef TEXT,
	claimResponse TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_focal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_businessArrangement)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preAuthRef)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (claimResponse)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claim_Accident(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"date" DATE,
	_date TEXT,
	"type" TEXT,
	locationAddress TEXT,
	locationReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claim_Item(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	careTeamSequence INTEGER,
	_careTeamSequence TEXT,
	diagnosisSequence INTEGER,
	_diagnosisSequence TEXT,
	procedureSequence INTEGER,
	_procedureSequence TEXT,
	informationSequence INTEGER,
	_informationSequence TEXT,
	revenue TEXT,
	category TEXT,
	productOrService TEXT,
	modifier TEXT,
	programCode TEXT,
	servicedDate TEXT,
	_servicedDate TEXT,
	servicedPeriod TEXT,
	locationCodeableConcept TEXT,
	locationAddress TEXT,
	locationReference TEXT,
	quantity TEXT,
	unitPrice TEXT,
	factor REAL,
	_factor TEXT,
	net TEXT,
	udi TEXT,
	bodySite TEXT,
	subSite TEXT,
	encounter TEXT,
	detail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_careTeamSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_diagnosisSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_procedureSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_informationSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (revenue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (programCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_servicedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicedPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (udi)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subSite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES claim_Detail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claim_Detail(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	revenue TEXT,
	category TEXT,
	productOrService TEXT,
	modifier TEXT,
	programCode TEXT,
	quantity TEXT,
	unitPrice TEXT,
	factor REAL,
	_factor TEXT,
	net TEXT,
	udi TEXT,
	subDetail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (revenue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (programCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (udi)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subDetail)
		REFERENCES claim_SubDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claim_SubDetail(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	revenue TEXT,
	category TEXT,
	productOrService TEXT,
	modifier TEXT,
	programCode TEXT,
	quantity TEXT,
	unitPrice TEXT,
	factor REAL,
	_factor TEXT,
	net TEXT,
	udi TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (revenue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (programCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (udi)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claimResponse(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	"type" TEXT,
	subType TEXT,
	"use" TEXT,
	_use TEXT,
	patient TEXT,
	created DATETIME,
	_created TEXT,
	insurer TEXT,
	requestor TEXT,
	request TEXT,
	outcome TEXT,
	_outcome TEXT,
	disposition TEXT,
	_disposition TEXT,
	preAuthRef TEXT,
	_preAuthRef TEXT,
	preAuthPeriod TEXT,
	payeeType TEXT,
	item TEXT,
	addItem TEXT,
	adjudication TEXT,
	total TEXT,
	payment TEXT,
	fundsReserve TEXT,
	formCode TEXT,
	form TEXT,
	processNote TEXT,
	communicationRequest TEXT,
	insurance TEXT,
	error TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcome)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_disposition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preAuthRef)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (preAuthPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payeeType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES claimResponse_Item (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (addItem)
		REFERENCES claimResponse_AddItem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES claimResponse_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (total)
		REFERENCES claimResponse_Total (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payment)
		REFERENCES claimResponse_Payment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fundsReserve)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (formCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (form)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (processNote)
		REFERENCES claimResponse_ProcessNote (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (communicationRequest)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurance)
		REFERENCES claimResponse_Insurance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (error)
		REFERENCES claimResponse_Error (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claimResponse_Item(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	itemSequence INTEGER,
	_itemSequence TEXT,
	noteNumber INTEGER,
	_noteNumber TEXT,
	adjudication TEXT,
	detail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_itemSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_noteNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES claimResponse_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES claimResponse_Detail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claimResponse_Adjudication(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	category TEXT,
	reason TEXT,
	amount TEXT,
	"value" REAL,
	_value TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claimResponse_Detail(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	detailSequence INTEGER,
	_detailSequence TEXT,
	noteNumber INTEGER,
	_noteNumber TEXT,
	adjudication TEXT,
	subDetail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detailSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_noteNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES claimResponse_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subDetail)
		REFERENCES claimResponse_SubDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claimResponse_SubDetail(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	subDetailSequence INTEGER,
	_subDetailSequence TEXT,
	noteNumber INTEGER,
	_noteNumber TEXT,
	adjudication TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subDetailSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_noteNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES claimResponse_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claimResponse_AddItem(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	itemSequence INTEGER,
	_itemSequence TEXT,
	detailSequence INTEGER,
	_detailSequence TEXT,
	subdetailSequence INTEGER,
	_subdetailSequence TEXT,
	"provider" TEXT,
	productOrService TEXT,
	modifier TEXT,
	programCode TEXT,
	servicedDate TEXT,
	_servicedDate TEXT,
	servicedPeriod TEXT,
	locationCodeableConcept TEXT,
	locationAddress TEXT,
	locationReference TEXT,
	quantity TEXT,
	unitPrice TEXT,
	factor REAL,
	_factor TEXT,
	net TEXT,
	bodySite TEXT,
	subSite TEXT,
	noteNumber INTEGER,
	_noteNumber TEXT,
	adjudication TEXT,
	detail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_itemSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detailSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subdetailSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (programCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_servicedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicedPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subSite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_noteNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES claimResponse_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES claimResponse_Detail1 (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claimResponse_Detail1(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	productOrService TEXT,
	modifier TEXT,
	quantity TEXT,
	unitPrice TEXT,
	factor REAL,
	_factor TEXT,
	net TEXT,
	noteNumber INTEGER,
	_noteNumber TEXT,
	adjudication TEXT,
	subDetail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_noteNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES claimResponse_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subDetail)
		REFERENCES claimResponse_SubDetail1 (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claimResponse_SubDetail1(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	productOrService TEXT,
	modifier TEXT,
	quantity TEXT,
	unitPrice TEXT,
	factor REAL,
	_factor TEXT,
	net TEXT,
	noteNumber INTEGER,
	_noteNumber TEXT,
	adjudication TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_noteNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES claimResponse_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claimResponse_Total(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	category TEXT,
	amount TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claimResponse_Payment(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	adjustment TEXT,
	adjustmentReason TEXT,
	"date" DATE,
	_date TEXT,
	amount TEXT,
	identifier TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjustment)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjustmentReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claimResponse_ProcessNote(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	number INTEGER,
	_number TEXT,
	"type" TEXT, --<code> enum: display/print/printoper
	_type TEXT,
	"text" TEXT,
	_text TEXT,
	"language" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_number)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("language")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claimResponse_Insurance(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	focal BOOLEAN,
	_focal TEXT,
	coverage TEXT,
	businessArrangement TEXT,
	_businessArrangement TEXT,
	claimResponse TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_focal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_businessArrangement)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (claimResponse)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE claimResponse_Error(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	itemSequence INTEGER,
	_itemSequence TEXT,
	detailSequence INTEGER,
	_detailSequence TEXT,
	subDetailSequence INTEGER,
	_subDetailSequence TEXT,
	"code" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_itemSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detailSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subDetailSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE clinicalImpression(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	statusReason TEXT,
	"code" TEXT,
	"description" TEXT,
	_description TEXT,
	"subject" TEXT,
	encounter TEXT,
	effectiveDateTime TEXT,
	_effectiveDateTime TEXT,
	effectivePeriod TEXT,
	"date" DATETIME,
	_date TEXT,
	assessor TEXT,
	previous TEXT,
	problem TEXT,
	investigation TEXT,
	protocol TEXT,
	_protocol TEXT,
	summary TEXT,
	_summary TEXT,
	finding TEXT,
	prognosisCodeableConcept TEXT,
	prognosisReference TEXT,
	supportingInfo TEXT,
	note TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (assessor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (previous)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (problem)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (investigation)
		REFERENCES clinicalImpression_Investigation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_protocol)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_summary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (finding)
		REFERENCES clinicalImpression_Finding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (prognosisCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (prognosisReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingInfo)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE clinicalImpression_Investigation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	item TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE clinicalImpression_Finding(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	itemCodeableConcept TEXT,
	itemReference TEXT,
	basis TEXT,
	_basis TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_basis)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE codeSystem(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	copyright TEXT,
	_copyright TEXT,
	caseSensitive BOOLEAN,
	_caseSensitive TEXT,
	valueSet TEXT,
	hierarchyMeaning TEXT, --<code> enum: grouped-by/is-a/part-of/classified-with
	_hierarchyMeaning TEXT,
	compositional BOOLEAN,
	_compositional TEXT,
	versionNeeded BOOLEAN,
	_versionNeeded TEXT,
	content TEXT, --<code> enum: not-present/example/fragment/complete/supplement
	_content TEXT,
	supplements TEXT,
	"count" INTEGER,
	_count TEXT,
	"filter" TEXT,
	property TEXT,
	concept TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_caseSensitive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_hierarchyMeaning)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_compositional)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_versionNeeded)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_content)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_count)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("filter")
		REFERENCES codeSystem_Filter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (property)
		REFERENCES codeSystem_Property (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (concept)
		REFERENCES codeSystem_Concept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE codeSystem_Filter(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	_code TEXT,
	"description" TEXT,
	_description TEXT,
	operator TEXT,
	_operator TEXT,
	"value" TEXT,
	_value TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_operator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE codeSystem_Property(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	_code TEXT,
	uri TEXT,
	_uri TEXT,
	"description" TEXT,
	_description TEXT,
	"type" TEXT, --<code> enum: code/Coding/string/integer/boolean/dateTime/decimal
	_type TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_uri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE codeSystem_Concept(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	_code TEXT,
	display TEXT,
	_display TEXT,
	"definition" TEXT,
	_definition TEXT,
	designation TEXT,
	property TEXT,
	concept TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (designation)
		REFERENCES codeSystem_Designation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (property)
		REFERENCES codeSystem_Property1 (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (concept)
		REFERENCES codeSystem_Concept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE codeSystem_Designation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"language" TEXT,
	_language TEXT,
	"use" TEXT,
	"value" TEXT,
	_value TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("use")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE codeSystem_Property1(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	_code TEXT,
	valueCode TEXT,
	_valueCode TEXT,
	valueCoding TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueInteger INTEGER,
	_valueInteger TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueDateTime TEXT,
	_valueDateTime TEXT,
	valueDecimal INTEGER,
	_valueDecimal TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE communication(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	instantiatesCanonical TEXT,
	instantiatesUri TEXT,
	_instantiatesUri TEXT,
	basedOn TEXT,
	partOf TEXT,
	inResponseTo TEXT,
	"status" TEXT,
	_status TEXT,
	statusReason TEXT,
	category TEXT,
	"priority" TEXT,
	_priority TEXT,
	medium TEXT,
	"subject" TEXT,
	topic TEXT,
	about TEXT,
	encounter TEXT,
	sent DATETIME,
	_sent TEXT,
	received DATETIME,
	_received TEXT,
	recipient TEXT,
	sender TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	payload TEXT,
	note TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (inResponseTo)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medium)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (about)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_received)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recipient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sender)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payload)
		REFERENCES communication_Payload (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE communication_Payload(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	contentString TEXT,
	_contentString TEXT,
	contentAttachment TEXT,
	contentReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contentString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE communicationRequest(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	basedOn TEXT,
	replaces TEXT,
	groupIdentifier TEXT,
	"status" TEXT,
	_status TEXT,
	statusReason TEXT,
	category TEXT,
	"priority" TEXT,
	_priority TEXT,
	doNotPerform BOOLEAN,
	_doNotPerform TEXT,
	medium TEXT,
	"subject" TEXT,
	about TEXT,
	encounter TEXT,
	payload TEXT,
	occurrenceDateTime TEXT,
	_occurrenceDateTime TEXT,
	occurrencePeriod TEXT,
	authoredOn DATETIME,
	_authoredOn TEXT,
	requester TEXT,
	recipient TEXT,
	sender TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	note TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (replaces)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (groupIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doNotPerform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medium)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (about)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payload)
		REFERENCES communicationRequest_Payload (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requester)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recipient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sender)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE communicationRequest_Payload(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	contentString TEXT,
	_contentString TEXT,
	contentAttachment TEXT,
	contentReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contentString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE compartmentDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	purpose TEXT,
	_purpose TEXT,
	"code" TEXT, --<code> enum: Patient/Encounter/RelatedPerson/Practitioner/Device
	_code TEXT,
	"search" BOOLEAN,
	_search TEXT,
	resource TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_search)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (resource)
		REFERENCES compartmentDefinition_Resource (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE compartmentDefinition_Resource(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	_code TEXT,
	param TEXT,
	_param TEXT,
	documentation TEXT,
	_documentation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_param)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE composition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: preliminary/final/amended/entered-in-error
	_status TEXT,
	"type" TEXT,
	category TEXT,
	"subject" TEXT,
	encounter TEXT,
	"date" DATETIME,
	_date TEXT,
	author TEXT,
	title TEXT,
	_title TEXT,
	confidentiality TEXT,
	_confidentiality TEXT,
	attester TEXT,
	custodian TEXT,
	relatesTo TEXT,
	"event" TEXT,
	section TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_confidentiality)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (attester)
		REFERENCES composition_Attester (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (custodian)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatesTo)
		REFERENCES composition_RelatesTo (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("event")
		REFERENCES composition_Event (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (section)
		REFERENCES composition_Section (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE composition_Attester(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	mode TEXT, --<code> enum: personal/professional/legal/official
	_mode TEXT,
	"time" DATETIME,
	_time TEXT,
	party TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_time)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (party)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE composition_RelatesTo(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	_code TEXT,
	targetIdentifier TEXT,
	targetReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (targetIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (targetReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE composition_Event(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"period" TEXT,
	detail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE composition_Section(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	title TEXT,
	_title TEXT,
	"code" TEXT,
	author TEXT,
	focus TEXT,
	"text" TEXT,
	mode TEXT,
	_mode TEXT,
	orderedBy TEXT,
	entry TEXT,
	emptyReason TEXT,
	section TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (focus)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (orderedBy)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (entry)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (emptyReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (section)
		REFERENCES composition_Section (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE conceptMap(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	copyright TEXT,
	_copyright TEXT,
	sourceUri TEXT,
	_sourceUri TEXT,
	sourceCanonical TEXT,
	_sourceCanonical TEXT,
	targetUri TEXT,
	_targetUri TEXT,
	targetCanonical TEXT,
	_targetCanonical TEXT,
	"group" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sourceUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sourceCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_targetUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_targetCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("group")
		REFERENCES conceptMap_Group (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE conceptMap_Group(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"source" TEXT,
	_source TEXT,
	sourceVersion TEXT,
	_sourceVersion TEXT,
	"target" TEXT,
	_target TEXT,
	targetVersion TEXT,
	_targetVersion TEXT,
	element TEXT,
	unmapped TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_source)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sourceVersion)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_target)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_targetVersion)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (element)
		REFERENCES conceptMap_Element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unmapped)
		REFERENCES conceptMap_Unmapped (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE conceptMap_Element(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	_code TEXT,
	display TEXT,
	_display TEXT,
	"target" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("target")
		REFERENCES conceptMap_Target (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE conceptMap_Target(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	_code TEXT,
	display TEXT,
	_display TEXT,
	equivalence TEXT, --<code> enum: relatedto/equivalent/equal/wider/subsumes/narrower/specializes/inexact/unmatched/disjoint
	_equivalence TEXT,
	comment TEXT,
	_comment TEXT,
	dependsOn TEXT,
	product TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_equivalence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dependsOn)
		REFERENCES conceptMap_DependsOn (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (product)
		REFERENCES conceptMap_DependsOn (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE conceptMap_DependsOn(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	property TEXT,
	_property TEXT,
	"system" TEXT,
	"value" TEXT,
	_value TEXT,
	display TEXT,
	_display TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_property)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE conceptMap_Unmapped(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	mode TEXT, --<code> enum: provided/fixed/other-map
	_mode TEXT,
	"code" TEXT,
	_code TEXT,
	display TEXT,
	_display TEXT,
	"url" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE "condition"(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	clinicalStatus TEXT,
	verificationStatus TEXT,
	category TEXT,
	severity TEXT,
	"code" TEXT,
	bodySite TEXT,
	"subject" TEXT,
	encounter TEXT,
	onsetDateTime TEXT,
	_onsetDateTime TEXT,
	onsetAge TEXT,
	onsetPeriod TEXT,
	onsetRange TEXT,
	onsetString TEXT,
	_onsetString TEXT,
	abatementDateTime TEXT,
	_abatementDateTime TEXT,
	abatementAge TEXT,
	abatementPeriod TEXT,
	abatementRange TEXT,
	abatementString TEXT,
	_abatementString TEXT,
	recordedDate DATETIME,
	_recordedDate TEXT,
	recorder TEXT,
	asserter TEXT,
	stage TEXT,
	evidence TEXT,
	note TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (clinicalStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (verificationStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (severity)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onsetDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onsetString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_abatementDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (abatementAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (abatementPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (abatementRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_abatementString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recordedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recorder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (asserter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (stage)
		REFERENCES condition_Stage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (evidence)
		REFERENCES condition_Evidence (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE condition_Stage(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	summary TEXT,
	assessment TEXT,
	"type" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (summary)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (assessment)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE condition_Evidence(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	detail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE consent(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: draft/proposed/active/rejected/inactive/entered-in-error
	_status TEXT,
	"scope" TEXT,
	category TEXT,
	patient TEXT,
	"dateTime" DATETIME,
	_dateTime TEXT,
	performer TEXT,
	organization TEXT,
	sourceAttachment TEXT,
	sourceReference TEXT,
	"policy" TEXT,
	policyRule TEXT,
	verification TEXT,
	provision TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("scope")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("policy")
		REFERENCES consent_Policy (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (policyRule)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (verification)
		REFERENCES consent_Verification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (provision)
		REFERENCES consent_Provision (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE consent_Policy(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	authority TEXT,
	_authority TEXT,
	uri TEXT,
	_uri TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_uri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE consent_Verification(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	verified BOOLEAN,
	_verified TEXT,
	verifiedWith TEXT,
	verificationDate DATETIME,
	_verificationDate TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_verified)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (verifiedWith)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_verificationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE consent_Provision(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT, --<code> enum: deny/permit
	_type TEXT,
	"period" TEXT,
	actor TEXT,
	"action" TEXT,
	securityLabel TEXT,
	purpose TEXT,
	class TEXT,
	"code" TEXT,
	dataPeriod TEXT,
	"data" TEXT,
	provision TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES consent_Actor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("action")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (securityLabel)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (purpose)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (class)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dataPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("data")
		REFERENCES consent_Data (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (provision)
		REFERENCES consent_Provision (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE consent_Actor(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"role" TEXT,
	reference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE consent_Data(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	meaning TEXT, --<code> enum: instance/related/dependents/authoredby
	_meaning TEXT,
	reference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_meaning)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"url" TEXT,
	_url TEXT,
	"version" TEXT,
	_version TEXT,
	"status" TEXT,
	_status TEXT,
	legalState TEXT,
	instantiatesCanonical TEXT,
	instantiatesUri TEXT,
	_instantiatesUri TEXT,
	contentDerivative TEXT,
	issued DATETIME,
	_issued TEXT,
	applies TEXT,
	expirationType TEXT,
	"subject" TEXT,
	authority TEXT,
	"domain" TEXT,
	"site" TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	subtitle TEXT,
	_subtitle TEXT,
	alias TEXT,
	_alias TEXT,
	author TEXT,
	"scope" TEXT,
	topicCodeableConcept TEXT,
	topicReference TEXT,
	"type" TEXT,
	subType TEXT,
	contentDefinition TEXT,
	term TEXT,
	supportingInfo TEXT,
	relevantHistory TEXT,
	signer TEXT,
	friendly TEXT,
	legal TEXT,
	"rule" TEXT,
	legallyBindingAttachment TEXT,
	legallyBindingReference TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legalState)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (instantiatesCanonical)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentDerivative)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issued)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (applies)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expirationType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authority)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("domain")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("site")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_alias)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("scope")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topicCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topicReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentDefinition)
		REFERENCES contract_ContentDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (term)
		REFERENCES contract_Term (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingInfo)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relevantHistory)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (signer)
		REFERENCES contract_Signer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (friendly)
		REFERENCES contract_Friendly (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legal)
		REFERENCES contract_Legal (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("rule")
		REFERENCES contract_Rule (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legallyBindingAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legallyBindingReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_ContentDefinition(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	subType TEXT,
	publisher TEXT,
	publicationDate DATETIME,
	_publicationDate TEXT,
	publicationStatus TEXT,
	_publicationStatus TEXT,
	copyright TEXT,
	_copyright TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (publisher)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publicationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publicationStatus)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_Term(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	issued DATETIME,
	_issued TEXT,
	applies TEXT,
	topicCodeableConcept TEXT,
	topicReference TEXT,
	"type" TEXT,
	subType TEXT,
	"text" TEXT,
	_text TEXT,
	securityLabel TEXT,
	offer TEXT,
	asset TEXT,
	"action" TEXT,
	"group" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issued)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (applies)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topicCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topicReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (securityLabel)
		REFERENCES contract_SecurityLabel (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (offer)
		REFERENCES contract_Offer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (asset)
		REFERENCES contract_Asset (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("action")
		REFERENCES contract_Action (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("group")
		REFERENCES contract_Term (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_SecurityLabel(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	number INTEGER,
	_number TEXT,
	classification TEXT,
	category TEXT,
	control TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_number)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (classification)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (control)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_Offer(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	party TEXT,
	topic TEXT,
	"type" TEXT,
	decision TEXT,
	decisionMode TEXT,
	answer TEXT,
	"text" TEXT,
	_text TEXT,
	linkId TEXT,
	_linkId TEXT,
	securityLabelNumber INTEGER,
	_securityLabelNumber TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (party)
		REFERENCES contract_Party (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (decision)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (decisionMode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (answer)
		REFERENCES contract_Answer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_linkId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_securityLabelNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_Party(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	reference TEXT,
	"role" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_Answer(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueDecimal INTEGER,
	_valueDecimal TEXT,
	valueInteger INTEGER,
	_valueInteger TEXT,
	valueDate TEXT,
	_valueDate TEXT,
	valueDateTime TEXT,
	_valueDateTime TEXT,
	valueTime TEXT,
	_valueTime TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueUri TEXT,
	_valueUri TEXT,
	valueAttachment TEXT,
	valueCoding TEXT,
	valueQuantity TEXT,
	valueReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_Asset(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"scope" TEXT,
	"type" TEXT,
	typeReference TEXT,
	subtype TEXT,
	relationship TEXT,
	context TEXT,
	"condition" TEXT,
	_condition TEXT,
	periodType TEXT,
	"period" TEXT,
	usePeriod TEXT,
	"text" TEXT,
	_text TEXT,
	linkId TEXT,
	_linkId TEXT,
	answer TEXT,
	securityLabelNumber INTEGER,
	_securityLabelNumber TEXT,
	valuedItem TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("scope")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (typeReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subtype)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES contract_Context (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_condition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (periodType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (usePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_linkId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (answer)
		REFERENCES contract_Answer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_securityLabelNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuedItem)
		REFERENCES contract_ValuedItem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_Context(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	reference TEXT,
	"code" TEXT,
	"text" TEXT,
	_text TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_ValuedItem(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	entityCodeableConcept TEXT,
	entityReference TEXT,
	identifier TEXT,
	effectiveTime DATETIME,
	_effectiveTime TEXT,
	quantity TEXT,
	unitPrice TEXT,
	factor REAL,
	_factor TEXT,
	points REAL,
	_points TEXT,
	net TEXT,
	payment TEXT,
	_payment TEXT,
	paymentDate DATETIME,
	_paymentDate TEXT,
	responsible TEXT,
	recipient TEXT,
	linkId TEXT,
	_linkId TEXT,
	securityLabelNumber INTEGER,
	_securityLabelNumber TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (entityCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (entityReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_points)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_payment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paymentDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (responsible)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recipient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_linkId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_securityLabelNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_Action(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	doNotPerform BOOLEAN,
	_doNotPerform TEXT,
	"type" TEXT,
	"subject" TEXT,
	intent TEXT,
	linkId TEXT,
	_linkId TEXT,
	"status" TEXT,
	context TEXT,
	contextLinkId TEXT,
	_contextLinkId TEXT,
	occurrenceDateTime TEXT,
	_occurrenceDateTime TEXT,
	occurrencePeriod TEXT,
	occurrenceTiming TEXT,
	requester TEXT,
	requesterLinkId TEXT,
	_requesterLinkId TEXT,
	performerType TEXT,
	performerRole TEXT,
	performer TEXT,
	performerLinkId TEXT,
	_performerLinkId TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	reason TEXT,
	_reason TEXT,
	reasonLinkId TEXT,
	_reasonLinkId TEXT,
	note TEXT,
	securityLabelNumber INTEGER,
	_securityLabelNumber TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doNotPerform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES contract_Subject (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (intent)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_linkId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contextLinkId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrenceTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requester)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requesterLinkId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performerType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performerRole)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_performerLinkId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reason)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reasonLinkId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_securityLabelNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_Subject(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	reference TEXT,
	"role" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_Signer(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	party TEXT,
	"signature" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (party)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("signature")
		REFERENCES "signature" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_Friendly(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	contentAttachment TEXT,
	contentReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_Legal(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	contentAttachment TEXT,
	contentReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE contract_Rule(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	contentAttachment TEXT,
	contentReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverage(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	"type" TEXT,
	policyHolder TEXT,
	subscriber TEXT,
	subscriberId TEXT,
	_subscriberId TEXT,
	beneficiary TEXT,
	dependent TEXT,
	_dependent TEXT,
	relationship TEXT,
	"period" TEXT,
	payor TEXT,
	class TEXT,
	"order" INTEGER,
	_order TEXT,
	network TEXT,
	_network TEXT,
	costToBeneficiary TEXT,
	subrogation BOOLEAN,
	_subrogation TEXT,
	contract TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (policyHolder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subscriber)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subscriberId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (beneficiary)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dependent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (class)
		REFERENCES coverage_Class (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_order)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_network)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (costToBeneficiary)
		REFERENCES coverage_CostToBeneficiary (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subrogation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contract)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverage_Class(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	"value" TEXT,
	_value TEXT,
	"name" TEXT,
	_name TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverage_CostToBeneficiary(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	valueQuantity TEXT,
	valueMoney TEXT,
	exception TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exception)
		REFERENCES coverage_Exception (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverage_Exception(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverageEligibilityRequest(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	"priority" TEXT,
	purpose TEXT, --<code> enum: auth-requirements/benefits/discovery/validation
	_purpose TEXT,
	patient TEXT,
	servicedDate TEXT,
	_servicedDate TEXT,
	servicedPeriod TEXT,
	created DATETIME,
	_created TEXT,
	enterer TEXT,
	"provider" TEXT,
	insurer TEXT,
	facility TEXT,
	supportingInfo TEXT,
	insurance TEXT,
	item TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("priority")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_servicedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicedPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enterer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (facility)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingInfo)
		REFERENCES coverageEligibilityRequest_SupportingInfo (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurance)
		REFERENCES coverageEligibilityRequest_Insurance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES coverageEligibilityRequest_Item (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverageEligibilityRequest_SupportingInfo(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	information TEXT,
	appliesToAll BOOLEAN,
	_appliesToAll TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (information)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_appliesToAll)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverageEligibilityRequest_Insurance(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	focal BOOLEAN,
	_focal TEXT,
	coverage TEXT,
	businessArrangement TEXT,
	_businessArrangement TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_focal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_businessArrangement)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverageEligibilityRequest_Item(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	supportingInfoSequence INTEGER,
	_supportingInfoSequence TEXT,
	category TEXT,
	productOrService TEXT,
	modifier TEXT,
	"provider" TEXT,
	quantity TEXT,
	unitPrice TEXT,
	facility TEXT,
	diagnosis TEXT,
	detail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_supportingInfoSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (facility)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosis)
		REFERENCES coverageEligibilityRequest_Diagnosis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverageEligibilityRequest_Diagnosis(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	diagnosisCodeableConcept TEXT,
	diagnosisReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosisCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosisReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverageEligibilityResponse(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	purpose TEXT, --<code> enum: auth-requirements/benefits/discovery/validation
	_purpose TEXT,
	patient TEXT,
	servicedDate TEXT,
	_servicedDate TEXT,
	servicedPeriod TEXT,
	created DATETIME,
	_created TEXT,
	requestor TEXT,
	request TEXT,
	outcome TEXT, --<code> enum: queued/complete/error/partial
	_outcome TEXT,
	disposition TEXT,
	_disposition TEXT,
	insurer TEXT,
	insurance TEXT,
	preAuthRef TEXT,
	_preAuthRef TEXT,
	form TEXT,
	error TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_servicedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicedPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcome)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_disposition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurance)
		REFERENCES coverageEligibilityResponse_Insurance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preAuthRef)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (form)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (error)
		REFERENCES coverageEligibilityResponse_Error (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverageEligibilityResponse_Insurance(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	coverage TEXT,
	inforce BOOLEAN,
	_inforce TEXT,
	benefitPeriod TEXT,
	item TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_inforce)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (benefitPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES coverageEligibilityResponse_Item (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverageEligibilityResponse_Item(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	category TEXT,
	productOrService TEXT,
	modifier TEXT,
	"provider" TEXT,
	excluded BOOLEAN,
	_excluded TEXT,
	"name" TEXT,
	_name TEXT,
	"description" TEXT,
	_description TEXT,
	network TEXT,
	unit TEXT,
	term TEXT,
	benefit TEXT,
	authorizationRequired BOOLEAN,
	_authorizationRequired TEXT,
	authorizationSupporting TEXT,
	authorizationUrl TEXT,
	_authorizationUrl TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_excluded)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (network)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unit)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (term)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (benefit)
		REFERENCES coverageEligibilityResponse_Benefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authorizationRequired)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authorizationSupporting)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authorizationUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverageEligibilityResponse_Benefit(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	allowedUnsignedInt INTEGER,
	_allowedUnsignedInt TEXT,
	allowedString TEXT,
	_allowedString TEXT,
	allowedMoney TEXT,
	usedUnsignedInt INTEGER,
	_usedUnsignedInt TEXT,
	usedString TEXT,
	_usedString TEXT,
	usedMoney TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allowedUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allowedString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (allowedMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usedUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usedString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (usedMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE coverageEligibilityResponse_Error(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE detectedIssue(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	"code" TEXT,
	severity TEXT, --<code> enum: high/moderate/low
	_severity TEXT,
	patient TEXT,
	identifiedDateTime TEXT,
	_identifiedDateTime TEXT,
	identifiedPeriod TEXT,
	author TEXT,
	implicated TEXT,
	evidence TEXT,
	detail TEXT,
	_detail TEXT,
	reference TEXT,
	_reference TEXT,
	mitigation TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_severity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_identifiedDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifiedPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (implicated)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (evidence)
		REFERENCES detectedIssue_Evidence (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detail)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reference)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (mitigation)
		REFERENCES detectedIssue_Mitigation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE detectedIssue_Evidence(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	detail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE detectedIssue_Mitigation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"action" TEXT,
	"date" DATETIME,
	_date TEXT,
	author TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("action")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE device(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"definition" TEXT,
	udiCarrier TEXT,
	"status" TEXT, --<code> enum: active/inactive/entered-in-error/unknown
	_status TEXT,
	statusReason TEXT,
	distinctIdentifier TEXT,
	_distinctIdentifier TEXT,
	manufacturer TEXT,
	_manufacturer TEXT,
	manufactureDate DATETIME,
	_manufactureDate TEXT,
	expirationDate DATETIME,
	_expirationDate TEXT,
	lotNumber TEXT,
	_lotNumber TEXT,
	serialNumber TEXT,
	_serialNumber TEXT,
	deviceName TEXT,
	modelNumber TEXT,
	_modelNumber TEXT,
	partNumber TEXT,
	_partNumber TEXT,
	"type" TEXT,
	specialization TEXT,
	"version" TEXT,
	property TEXT,
	patient TEXT,
	"owner" TEXT,
	contact TEXT,
	"location" TEXT,
	"url" TEXT,
	_url TEXT,
	note TEXT,
	safety TEXT,
	parent TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("definition")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (udiCarrier)
		REFERENCES device_UdiCarrier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_distinctIdentifier)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_manufacturer)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_manufactureDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expirationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lotNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_serialNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (deviceName)
		REFERENCES device_DeviceName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_modelNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_partNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specialization)
		REFERENCES device_Specialization (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("version")
		REFERENCES device_Version (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (property)
		REFERENCES device_Property (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("owner")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (safety)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (parent)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE device_UdiCarrier(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	deviceIdentifier TEXT,
	_deviceIdentifier TEXT,
	issuer TEXT,
	_issuer TEXT,
	jurisdiction TEXT,
	_jurisdiction TEXT,
	carrierAIDC TEXT,
	_carrierAIDC TEXT,
	carrierHRF TEXT,
	_carrierHRF TEXT,
	entryType TEXT, --<code> enum: barcode/rfid/manual/card/self-reported/unknown
	_entryType TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deviceIdentifier)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issuer)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_jurisdiction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_carrierAIDC)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_carrierHRF)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_entryType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE device_DeviceName(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"type" TEXT, --<code> enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other
	_type TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE device_Specialization(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	systemType TEXT,
	"version" TEXT,
	_version TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (systemType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE device_Version(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	component TEXT,
	"value" TEXT,
	_value TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (component)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE device_Property(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	valueQuantity TEXT,
	valueCode TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE deviceDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	udiDeviceIdentifier TEXT,
	manufacturerString TEXT,
	_manufacturerString TEXT,
	manufacturerReference TEXT,
	deviceName TEXT,
	modelNumber TEXT,
	_modelNumber TEXT,
	"type" TEXT,
	specialization TEXT,
	"version" TEXT,
	_version TEXT,
	safety TEXT,
	shelfLifeStorage TEXT,
	physicalCharacteristics TEXT,
	languageCode TEXT,
	capability TEXT,
	property TEXT,
	"owner" TEXT,
	contact TEXT,
	"url" TEXT,
	_url TEXT,
	onlineInformation TEXT,
	_onlineInformation TEXT,
	note TEXT,
	quantity TEXT,
	parentDevice TEXT,
	material TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (udiDeviceIdentifier)
		REFERENCES deviceDefinition_UdiDeviceIdentifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_manufacturerString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturerReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (deviceName)
		REFERENCES deviceDefinition_DeviceName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_modelNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specialization)
		REFERENCES deviceDefinition_Specialization (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (safety)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (shelfLifeStorage)
		REFERENCES productShelfLife (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (physicalCharacteristics)
		REFERENCES prodCharacteristic (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (languageCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (capability)
		REFERENCES deviceDefinition_Capability (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (property)
		REFERENCES deviceDefinition_Property (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("owner")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onlineInformation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (parentDevice)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (material)
		REFERENCES deviceDefinition_Material (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE deviceDefinition_UdiDeviceIdentifier(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	deviceIdentifier TEXT,
	_deviceIdentifier TEXT,
	issuer TEXT,
	_issuer TEXT,
	jurisdiction TEXT,
	_jurisdiction TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deviceIdentifier)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issuer)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_jurisdiction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE deviceDefinition_DeviceName(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"type" TEXT, --<code> enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other
	_type TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE deviceDefinition_Specialization(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	systemType TEXT,
	_systemType TEXT,
	"version" TEXT,
	_version TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_systemType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE deviceDefinition_Capability(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	"description" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("description")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE deviceDefinition_Property(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	valueQuantity TEXT,
	valueCode TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE deviceDefinition_Material(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	substance TEXT,
	alternate BOOLEAN,
	_alternate TEXT,
	allergenicIndicator BOOLEAN,
	_allergenicIndicator TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substance)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_alternate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allergenicIndicator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE deviceMetric(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"type" TEXT,
	unit TEXT,
	"source" TEXT,
	parent TEXT,
	operationalStatus TEXT, --<code> enum: on/off/standby/entered-in-error
	_operationalStatus TEXT,
	color TEXT, --<code> enum: black/red/green/yellow/blue/magenta/cyan/white
	_color TEXT,
	category TEXT, --<code> enum: measurement/setting/calculation/unspecified
	_category TEXT,
	measurementPeriod TEXT,
	calibration TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unit)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (parent)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_operationalStatus)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_color)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_category)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (measurementPeriod)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (calibration)
		REFERENCES deviceMetric_Calibration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE deviceMetric_Calibration(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT, --<code> enum: unspecified/offset/gain/two-point
	_type TEXT,
	state TEXT, --<code> enum: not-calibrated/calibration-required/calibrated/unspecified
	_state TEXT,
	"time" DATETIME,
	_time TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_state)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_time)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE deviceRequest(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	instantiatesCanonical TEXT,
	instantiatesUri TEXT,
	_instantiatesUri TEXT,
	basedOn TEXT,
	priorRequest TEXT,
	groupIdentifier TEXT,
	"status" TEXT,
	_status TEXT,
	intent TEXT,
	_intent TEXT,
	"priority" TEXT,
	_priority TEXT,
	codeReference TEXT,
	codeCodeableConcept TEXT,
	"parameter" TEXT,
	"subject" TEXT,
	encounter TEXT,
	occurrenceDateTime TEXT,
	_occurrenceDateTime TEXT,
	occurrencePeriod TEXT,
	occurrenceTiming TEXT,
	authoredOn DATETIME,
	_authoredOn TEXT,
	requester TEXT,
	performerType TEXT,
	performer TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	insurance TEXT,
	supportingInfo TEXT,
	note TEXT,
	relevantHistory TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (priorRequest)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (groupIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (codeReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (codeCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("parameter")
		REFERENCES deviceRequest_Parameter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrenceTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requester)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performerType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurance)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingInfo)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relevantHistory)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE deviceRequest_Parameter(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	valueCodeableConcept TEXT,
	valueQuantity TEXT,
	valueRange TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE deviceUseStatement(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	basedOn TEXT,
	"status" TEXT, --<code> enum: active/completed/entered-in-error/intended/stopped/on-hold
	_status TEXT,
	"subject" TEXT,
	derivedFrom TEXT,
	timingTiming TEXT,
	timingPeriod TEXT,
	timingDateTime TEXT,
	_timingDateTime TEXT,
	recordedOn DATETIME,
	_recordedOn TEXT,
	"source" TEXT,
	device TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	bodySite TEXT,
	note TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (derivedFrom)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recordedOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (device)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE diagnosticReport(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	basedOn TEXT,
	"status" TEXT, --<code> enum: registered/partial/preliminary/final/amended/corrected/appended/cancelled/entered-in-error/unknown
	_status TEXT,
	category TEXT,
	"code" TEXT,
	"subject" TEXT,
	encounter TEXT,
	effectiveDateTime TEXT,
	_effectiveDateTime TEXT,
	effectivePeriod TEXT,
	issued DATETIME,
	_issued TEXT,
	performer TEXT,
	resultsInterpreter TEXT,
	specimen TEXT,
	"result" TEXT,
	imagingStudy TEXT,
	media TEXT,
	conclusion TEXT,
	_conclusion TEXT,
	conclusionCode TEXT,
	presentedForm TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issued)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (resultsInterpreter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specimen)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("result")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (imagingStudy)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (media)
		REFERENCES diagnosticReport_Media (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_conclusion)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (conclusionCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (presentedForm)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE diagnosticReport_Media(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	comment TEXT,
	_comment TEXT,
	link TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (link)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE documentManifest(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	masterIdentifier TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: current/superseded/entered-in-error
	_status TEXT,
	"type" TEXT,
	"subject" TEXT,
	created DATETIME,
	_created TEXT,
	author TEXT,
	recipient TEXT,
	"source" TEXT,
	_source TEXT,
	"description" TEXT,
	_description TEXT,
	content TEXT,
	related TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (masterIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recipient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_source)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (content)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (related)
		REFERENCES documentManifest_Related (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE documentManifest_Related(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	ref TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ref)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE documentReference(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	masterIdentifier TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: current/superseded/entered-in-error
	_status TEXT,
	docStatus TEXT,
	_docStatus TEXT,
	"type" TEXT,
	category TEXT,
	"subject" TEXT,
	"date" DATETIME,
	_date TEXT,
	author TEXT,
	authenticator TEXT,
	custodian TEXT,
	relatesTo TEXT,
	"description" TEXT,
	_description TEXT,
	securityLabel TEXT,
	content TEXT,
	context TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (masterIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_docStatus)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authenticator)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (custodian)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatesTo)
		REFERENCES documentReference_RelatesTo (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (securityLabel)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (content)
		REFERENCES documentReference_Content (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES documentReference_Context (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE documentReference_RelatesTo(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT, --<code> enum: replaces/transforms/signs/appends
	_code TEXT,
	"target" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("target")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE documentReference_Content(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	attachment TEXT,
	format TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (attachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (format)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE documentReference_Context(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	encounter TEXT,
	"event" TEXT,
	"period" TEXT,
	facilityType TEXT,
	practiceSetting TEXT,
	sourcePatientInfo TEXT,
	related TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("event")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (facilityType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (practiceSetting)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourcePatientInfo)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (related)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE effectEvidenceSynthesis(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	note TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	copyright TEXT,
	_copyright TEXT,
	approvalDate DATE,
	_approvalDate TEXT,
	lastReviewDate DATE,
	_lastReviewDate TEXT,
	effectivePeriod TEXT,
	topic TEXT,
	author TEXT,
	editor TEXT,
	reviewer TEXT,
	endorser TEXT,
	relatedArtifact TEXT,
	synthesisType TEXT,
	studyType TEXT,
	"population" TEXT,
	exposure TEXT,
	exposureAlternative TEXT,
	outcome TEXT,
	sampleSize TEXT,
	resultsByExposure TEXT,
	effectEstimate TEXT,
	certainty TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (editor)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reviewer)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (endorser)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (synthesisType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (studyType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("population")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposure)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposureAlternative)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sampleSize)
		REFERENCES effectEvidenceSynthesis_SampleSize (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (resultsByExposure)
		REFERENCES effectEvidenceSynthesis_ResultsByExposure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectEstimate)
		REFERENCES effectEvidenceSynthesis_EffectEstimate (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (certainty)
		REFERENCES effectEvidenceSynthesis_Certainty (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE effectEvidenceSynthesis_SampleSize(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	numberOfStudies INTEGER,
	_numberOfStudies TEXT,
	numberOfParticipants INTEGER,
	_numberOfParticipants TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfStudies)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfParticipants)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE effectEvidenceSynthesis_ResultsByExposure(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	exposureState TEXT, --<code> enum: exposure/exposure-alternative
	_exposureState TEXT,
	variantState TEXT,
	riskEvidenceSynthesis TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exposureState)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (variantState)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (riskEvidenceSynthesis)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE effectEvidenceSynthesis_EffectEstimate(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	"type" TEXT,
	variantState TEXT,
	"value" REAL,
	_value TEXT,
	unitOfMeasure TEXT,
	precisionEstimate TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (variantState)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitOfMeasure)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (precisionEstimate)
		REFERENCES effectEvidenceSynthesis_PrecisionEstimate (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE effectEvidenceSynthesis_PrecisionEstimate(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	"level" REAL,
	_level TEXT,
	"from" REAL,
	_from TEXT,
	"to" REAL,
	_to TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_level)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_from)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_to)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE effectEvidenceSynthesis_Certainty(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	rating TEXT,
	note TEXT,
	certaintySubcomponent TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rating)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (certaintySubcomponent)
		REFERENCES effectEvidenceSynthesis_CertaintySubcomponent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE effectEvidenceSynthesis_CertaintySubcomponent(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	rating TEXT,
	note TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rating)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE encounter(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown
	_status TEXT,
	statusHistory TEXT,
	class TEXT,
	classHistory TEXT,
	"type" TEXT,
	serviceType TEXT,
	"priority" TEXT,
	"subject" TEXT,
	episodeOfCare TEXT,
	basedOn TEXT,
	participant TEXT,
	appointment TEXT,
	"period" TEXT,
	"length" TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	diagnosis TEXT,
	account TEXT,
	hospitalization TEXT,
	"location" TEXT,
	serviceProvider TEXT,
	partOf TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusHistory)
		REFERENCES encounter_StatusHistory (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (class)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (classHistory)
		REFERENCES encounter_ClassHistory (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (serviceType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("priority")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (episodeOfCare)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participant)
		REFERENCES encounter_Participant (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (appointment)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("length")
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosis)
		REFERENCES encounter_Diagnosis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (account)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (hospitalization)
		REFERENCES encounter_Hospitalization (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES encounter_Location (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (serviceProvider)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE encounter_StatusHistory(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"status" TEXT, --<code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown
	_status TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE encounter_ClassHistory(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	class TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (class)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE encounter_Participant(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	"period" TEXT,
	individual TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (individual)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE encounter_Diagnosis(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"condition" TEXT,
	"use" TEXT,
	"rank" INTEGER,
	_rank TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("condition")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("use")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rank)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE encounter_Hospitalization(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	preAdmissionIdentifier TEXT,
	origin TEXT,
	admitSource TEXT,
	reAdmission TEXT,
	dietPreference TEXT,
	specialCourtesy TEXT,
	specialArrangement TEXT,
	destination TEXT,
	dischargeDisposition TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (preAdmissionIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (origin)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (admitSource)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reAdmission)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dietPreference)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specialCourtesy)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specialArrangement)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (destination)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dischargeDisposition)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE encounter_Location(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"location" TEXT,
	"status" TEXT, --<code> enum: planned/active/reserved/completed
	_status TEXT,
	physicalType TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (physicalType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE "endpoint"(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: active/suspended/error/off/entered-in-error/test
	_status TEXT,
	connectionType TEXT,
	"name" TEXT,
	_name TEXT,
	managingOrganization TEXT,
	contact TEXT,
	"period" TEXT,
	payloadType TEXT,
	payloadMimeType TEXT,
	_payloadMimeType TEXT,
	"address" TEXT,
	_address TEXT,
	header TEXT,
	_header TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (connectionType)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (managingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payloadType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_payloadMimeType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_address)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_header)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE enrollmentRequest(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	created DATETIME,
	_created TEXT,
	insurer TEXT,
	"provider" TEXT,
	candidate TEXT,
	coverage TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (candidate)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE enrollmentResponse(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	request TEXT,
	outcome TEXT, --<code> enum: queued/complete/error/partial
	_outcome TEXT,
	disposition TEXT,
	_disposition TEXT,
	created DATETIME,
	_created TEXT,
	organization TEXT,
	requestProvider TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcome)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_disposition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestProvider)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE episodeOfCare(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error
	_status TEXT,
	statusHistory TEXT,
	"type" TEXT,
	diagnosis TEXT,
	patient TEXT,
	managingOrganization TEXT,
	"period" TEXT,
	referralRequest TEXT,
	careManager TEXT,
	team TEXT,
	account TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusHistory)
		REFERENCES episodeOfCare_StatusHistory (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosis)
		REFERENCES episodeOfCare_Diagnosis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (managingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referralRequest)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (careManager)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (team)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (account)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE episodeOfCare_StatusHistory(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"status" TEXT, --<code> enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error
	_status TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE episodeOfCare_Diagnosis(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"condition" TEXT,
	"role" TEXT,
	"rank" INTEGER,
	_rank TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("condition")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rank)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE eventDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	subtitle TEXT,
	_subtitle TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	subjectCodeableConcept TEXT,
	subjectReference TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	"usage" TEXT,
	_usage TEXT,
	copyright TEXT,
	_copyright TEXT,
	approvalDate DATE,
	_approvalDate TEXT,
	lastReviewDate DATE,
	_lastReviewDate TEXT,
	effectivePeriod TEXT,
	topic TEXT,
	author TEXT,
	editor TEXT,
	reviewer TEXT,
	endorser TEXT,
	relatedArtifact TEXT,
	"trigger" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (editor)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reviewer)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (endorser)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("trigger")
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE evidence(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	shortTitle TEXT,
	_shortTitle TEXT,
	subtitle TEXT,
	_subtitle TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	note TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	copyright TEXT,
	_copyright TEXT,
	approvalDate DATE,
	_approvalDate TEXT,
	lastReviewDate DATE,
	_lastReviewDate TEXT,
	effectivePeriod TEXT,
	topic TEXT,
	author TEXT,
	editor TEXT,
	reviewer TEXT,
	endorser TEXT,
	relatedArtifact TEXT,
	exposureBackground TEXT,
	exposureVariant TEXT,
	outcome TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_shortTitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (editor)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reviewer)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (endorser)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposureBackground)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposureVariant)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE evidenceVariable(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	shortTitle TEXT,
	_shortTitle TEXT,
	subtitle TEXT,
	_subtitle TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	note TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	copyright TEXT,
	_copyright TEXT,
	approvalDate DATE,
	_approvalDate TEXT,
	lastReviewDate DATE,
	_lastReviewDate TEXT,
	effectivePeriod TEXT,
	topic TEXT,
	author TEXT,
	editor TEXT,
	reviewer TEXT,
	endorser TEXT,
	relatedArtifact TEXT,
	"type" TEXT, --<code> enum: dichotomous/continuous/descriptive
	_type TEXT,
	characteristic TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_shortTitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (editor)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reviewer)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (endorser)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (characteristic)
		REFERENCES evidenceVariable_Characteristic (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE evidenceVariable_Characteristic(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	definitionReference TEXT,
	definitionCanonical TEXT,
	_definitionCanonical TEXT,
	definitionCodeableConcept TEXT,
	definitionExpression TEXT,
	definitionDataRequirement TEXT,
	definitionTriggerDefinition TEXT,
	usageContext TEXT,
	exclude BOOLEAN,
	_exclude TEXT,
	participantEffectiveDateTime TEXT,
	_participantEffectiveDateTime TEXT,
	participantEffectivePeriod TEXT,
	participantEffectiveDuration TEXT,
	participantEffectiveTiming TEXT,
	timeFromStart TEXT,
	groupMeasure TEXT, --<code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median
	_groupMeasure TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definitionCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (usageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exclude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_participantEffectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectiveDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectiveTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timeFromStart)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_groupMeasure)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE exampleScenario(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	copyright TEXT,
	_copyright TEXT,
	purpose TEXT,
	_purpose TEXT,
	actor TEXT,
	"instance" TEXT,
	process TEXT,
	workflow TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES exampleScenario_Actor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("instance")
		REFERENCES exampleScenario_Instance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (process)
		REFERENCES exampleScenario_Process (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE exampleScenario_Actor(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	actorId TEXT,
	_actorId TEXT,
	"type" TEXT, --<code> enum: person/entity
	_type TEXT,
	"name" TEXT,
	_name TEXT,
	"description" TEXT,
	_description TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_actorId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE exampleScenario_Instance(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	resourceId TEXT,
	_resourceId TEXT,
	resourceType TEXT,
	_resourceType TEXT,
	"name" TEXT,
	_name TEXT,
	"description" TEXT,
	_description TEXT,
	"version" TEXT,
	containedInstance TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_resourceId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_resourceType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("version")
		REFERENCES exampleScenario_Version (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (containedInstance)
		REFERENCES exampleScenario_ContainedInstance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE exampleScenario_Version(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	versionId TEXT,
	_versionId TEXT,
	"description" TEXT,
	_description TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_versionId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE exampleScenario_ContainedInstance(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	resourceId TEXT,
	_resourceId TEXT,
	versionId TEXT,
	_versionId TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_resourceId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_versionId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE exampleScenario_Process(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	title TEXT,
	_title TEXT,
	"description" TEXT,
	_description TEXT,
	preConditions TEXT,
	_preConditions TEXT,
	postConditions TEXT,
	_postConditions TEXT,
	step TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preConditions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_postConditions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (step)
		REFERENCES exampleScenario_Step (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE exampleScenario_Step(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	process TEXT,
	pause BOOLEAN,
	_pause TEXT,
	operation TEXT,
	alternative TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (process)
		REFERENCES exampleScenario_Process (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_pause)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (operation)
		REFERENCES exampleScenario_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (alternative)
		REFERENCES exampleScenario_Alternative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE exampleScenario_Operation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	number TEXT,
	_number TEXT,
	"type" TEXT,
	_type TEXT,
	"name" TEXT,
	_name TEXT,
	initiator TEXT,
	_initiator TEXT,
	receiver TEXT,
	_receiver TEXT,
	"description" TEXT,
	_description TEXT,
	initiatorActive BOOLEAN,
	_initiatorActive TEXT,
	receiverActive BOOLEAN,
	_receiverActive TEXT,
	request TEXT,
	response TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_number)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_initiator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_receiver)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_initiatorActive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_receiverActive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES exampleScenario_ContainedInstance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (response)
		REFERENCES exampleScenario_ContainedInstance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE exampleScenario_Alternative(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	title TEXT,
	_title TEXT,
	"description" TEXT,
	_description TEXT,
	step TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (step)
		REFERENCES exampleScenario_Step (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: active/cancelled/draft/entered-in-error
	_status TEXT,
	"type" TEXT,
	subType TEXT,
	"use" TEXT,
	_use TEXT,
	patient TEXT,
	billablePeriod TEXT,
	created DATETIME,
	_created TEXT,
	enterer TEXT,
	insurer TEXT,
	"provider" TEXT,
	"priority" TEXT,
	fundsReserveRequested TEXT,
	fundsReserve TEXT,
	related TEXT,
	prescription TEXT,
	originalPrescription TEXT,
	payee TEXT,
	referral TEXT,
	facility TEXT,
	claim TEXT,
	claimResponse TEXT,
	outcome TEXT,
	_outcome TEXT,
	disposition TEXT,
	_disposition TEXT,
	preAuthRef TEXT,
	_preAuthRef TEXT,
	preAuthRefPeriod TEXT,
	careTeam TEXT,
	supportingInfo TEXT,
	diagnosis TEXT,
	"procedure" TEXT,
	precedence INTEGER,
	_precedence TEXT,
	insurance TEXT,
	accident TEXT,
	item TEXT,
	addItem TEXT,
	adjudication TEXT,
	total TEXT,
	payment TEXT,
	formCode TEXT,
	form TEXT,
	processNote TEXT,
	benefitPeriod TEXT,
	benefitBalance TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (billablePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enterer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("priority")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fundsReserveRequested)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fundsReserve)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (related)
		REFERENCES explanationOfBenefit_Related (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (prescription)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (originalPrescription)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payee)
		REFERENCES explanationOfBenefit_Payee (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referral)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (facility)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (claim)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (claimResponse)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcome)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_disposition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preAuthRef)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (preAuthRefPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (careTeam)
		REFERENCES explanationOfBenefit_CareTeam (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingInfo)
		REFERENCES explanationOfBenefit_SupportingInfo (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosis)
		REFERENCES explanationOfBenefit_Diagnosis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("procedure")
		REFERENCES explanationOfBenefit_Procedure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_precedence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurance)
		REFERENCES explanationOfBenefit_Insurance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (accident)
		REFERENCES explanationOfBenefit_Accident (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES explanationOfBenefit_Item (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (addItem)
		REFERENCES explanationOfBenefit_AddItem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES explanationOfBenefit_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (total)
		REFERENCES explanationOfBenefit_Total (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payment)
		REFERENCES explanationOfBenefit_Payment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (formCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (form)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (processNote)
		REFERENCES explanationOfBenefit_ProcessNote (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (benefitPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (benefitBalance)
		REFERENCES explanationOfBenefit_BenefitBalance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_Related(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	claim TEXT,
	relationship TEXT,
	reference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (claim)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_Payee(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	party TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (party)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_CareTeam(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	"provider" TEXT,
	responsible BOOLEAN,
	_responsible TEXT,
	"role" TEXT,
	qualification TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_responsible)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (qualification)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_SupportingInfo(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	category TEXT,
	"code" TEXT,
	timingDate TEXT,
	_timingDate TEXT,
	timingPeriod TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueQuantity TEXT,
	valueAttachment TEXT,
	valueReference TEXT,
	reason TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_Diagnosis(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	diagnosisCodeableConcept TEXT,
	diagnosisReference TEXT,
	"type" TEXT,
	onAdmission TEXT,
	packageCode TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosisCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosisReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onAdmission)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (packageCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_Procedure(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	"type" TEXT,
	"date" DATETIME,
	_date TEXT,
	procedureCodeableConcept TEXT,
	procedureReference TEXT,
	udi TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (procedureCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (procedureReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (udi)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_Insurance(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	focal BOOLEAN,
	_focal TEXT,
	coverage TEXT,
	preAuthRef TEXT,
	_preAuthRef TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_focal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preAuthRef)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_Accident(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"date" DATE,
	_date TEXT,
	"type" TEXT,
	locationAddress TEXT,
	locationReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_Item(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	careTeamSequence INTEGER,
	_careTeamSequence TEXT,
	diagnosisSequence INTEGER,
	_diagnosisSequence TEXT,
	procedureSequence INTEGER,
	_procedureSequence TEXT,
	informationSequence INTEGER,
	_informationSequence TEXT,
	revenue TEXT,
	category TEXT,
	productOrService TEXT,
	modifier TEXT,
	programCode TEXT,
	servicedDate TEXT,
	_servicedDate TEXT,
	servicedPeriod TEXT,
	locationCodeableConcept TEXT,
	locationAddress TEXT,
	locationReference TEXT,
	quantity TEXT,
	unitPrice TEXT,
	factor REAL,
	_factor TEXT,
	net TEXT,
	udi TEXT,
	bodySite TEXT,
	subSite TEXT,
	encounter TEXT,
	noteNumber INTEGER,
	_noteNumber TEXT,
	adjudication TEXT,
	detail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_careTeamSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_diagnosisSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_procedureSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_informationSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (revenue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (programCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_servicedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicedPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (udi)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subSite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_noteNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES explanationOfBenefit_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES explanationOfBenefit_Detail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_Adjudication(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	category TEXT,
	reason TEXT,
	amount TEXT,
	"value" REAL,
	_value TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_Detail(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	revenue TEXT,
	category TEXT,
	productOrService TEXT,
	modifier TEXT,
	programCode TEXT,
	quantity TEXT,
	unitPrice TEXT,
	factor REAL,
	_factor TEXT,
	net TEXT,
	udi TEXT,
	noteNumber INTEGER,
	_noteNumber TEXT,
	adjudication TEXT,
	subDetail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (revenue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (programCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (udi)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_noteNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES explanationOfBenefit_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subDetail)
		REFERENCES explanationOfBenefit_SubDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_SubDetail(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	revenue TEXT,
	category TEXT,
	productOrService TEXT,
	modifier TEXT,
	programCode TEXT,
	quantity TEXT,
	unitPrice TEXT,
	factor REAL,
	_factor TEXT,
	net TEXT,
	udi TEXT,
	noteNumber INTEGER,
	_noteNumber TEXT,
	adjudication TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (revenue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (programCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (udi)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_noteNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES explanationOfBenefit_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_AddItem(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	itemSequence INTEGER,
	_itemSequence TEXT,
	detailSequence INTEGER,
	_detailSequence TEXT,
	subDetailSequence INTEGER,
	_subDetailSequence TEXT,
	"provider" TEXT,
	productOrService TEXT,
	modifier TEXT,
	programCode TEXT,
	servicedDate TEXT,
	_servicedDate TEXT,
	servicedPeriod TEXT,
	locationCodeableConcept TEXT,
	locationAddress TEXT,
	locationReference TEXT,
	quantity TEXT,
	unitPrice TEXT,
	factor REAL,
	_factor TEXT,
	net TEXT,
	bodySite TEXT,
	subSite TEXT,
	noteNumber INTEGER,
	_noteNumber TEXT,
	adjudication TEXT,
	detail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_itemSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detailSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subDetailSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (programCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_servicedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicedPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subSite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_noteNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES explanationOfBenefit_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES explanationOfBenefit_Detail1 (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_Detail1(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	productOrService TEXT,
	modifier TEXT,
	quantity TEXT,
	unitPrice TEXT,
	factor REAL,
	_factor TEXT,
	net TEXT,
	noteNumber INTEGER,
	_noteNumber TEXT,
	adjudication TEXT,
	subDetail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_noteNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES explanationOfBenefit_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subDetail)
		REFERENCES explanationOfBenefit_SubDetail1 (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_SubDetail1(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	productOrService TEXT,
	modifier TEXT,
	quantity TEXT,
	unitPrice TEXT,
	factor REAL,
	_factor TEXT,
	net TEXT,
	noteNumber INTEGER,
	_noteNumber TEXT,
	adjudication TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_noteNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjudication)
		REFERENCES explanationOfBenefit_Adjudication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_Total(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	category TEXT,
	amount TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_Payment(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	adjustment TEXT,
	adjustmentReason TEXT,
	"date" DATE,
	_date TEXT,
	amount TEXT,
	identifier TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjustment)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjustmentReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_ProcessNote(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	number INTEGER,
	_number TEXT,
	"type" TEXT, --<code> enum: display/print/printoper
	_type TEXT,
	"text" TEXT,
	_text TEXT,
	"language" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_number)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("language")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_BenefitBalance(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	category TEXT,
	excluded BOOLEAN,
	_excluded TEXT,
	"name" TEXT,
	_name TEXT,
	"description" TEXT,
	_description TEXT,
	network TEXT,
	unit TEXT,
	term TEXT,
	financial TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_excluded)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (network)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unit)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (term)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (financial)
		REFERENCES explanationOfBenefit_Financial (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE explanationOfBenefit_Financial(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	allowedUnsignedInt INTEGER,
	_allowedUnsignedInt TEXT,
	allowedString TEXT,
	_allowedString TEXT,
	allowedMoney TEXT,
	usedUnsignedInt INTEGER,
	_usedUnsignedInt TEXT,
	usedMoney TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allowedUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allowedString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (allowedMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usedUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (usedMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE familyMemberHistory(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	instantiatesCanonical TEXT,
	instantiatesUri TEXT,
	_instantiatesUri TEXT,
	"status" TEXT, --<code> enum: partial/completed/entered-in-error/health-unknown
	_status TEXT,
	dataAbsentReason TEXT,
	patient TEXT,
	"date" DATETIME,
	_date TEXT,
	"name" TEXT,
	_name TEXT,
	relationship TEXT,
	sex TEXT,
	bornPeriod TEXT,
	bornDate TEXT,
	_bornDate TEXT,
	bornString TEXT,
	_bornString TEXT,
	ageAge TEXT,
	ageRange TEXT,
	ageString TEXT,
	_ageString TEXT,
	estimatedAge BOOLEAN,
	_estimatedAge TEXT,
	deceasedBoolean BOOLEAN,
	_deceasedBoolean TEXT,
	deceasedAge TEXT,
	deceasedRange TEXT,
	deceasedDate TEXT,
	_deceasedDate TEXT,
	deceasedString TEXT,
	_deceasedString TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	note TEXT,
	"condition" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dataAbsentReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sex)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bornPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_bornDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_bornString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ageAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ageRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_ageString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_estimatedAge)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deceasedBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (deceasedAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (deceasedRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deceasedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deceasedString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("condition")
		REFERENCES familyMemberHistory_Condition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE familyMemberHistory_Condition(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	outcome TEXT,
	contributedToDeath BOOLEAN,
	_contributedToDeath TEXT,
	onsetAge TEXT,
	onsetRange TEXT,
	onsetPeriod TEXT,
	onsetString TEXT,
	_onsetString TEXT,
	note TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contributedToDeath)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onsetString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE flag(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: active/inactive/entered-in-error
	_status TEXT,
	category TEXT,
	"code" TEXT,
	"subject" TEXT,
	"period" TEXT,
	encounter TEXT,
	author TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE goal(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	lifecycleStatus TEXT, --<code> enum: proposed/planned/accepted/active/on-hold/completed/cancelled/entered-in-error/rejected
	_lifecycleStatus TEXT,
	achievementStatus TEXT,
	category TEXT,
	"priority" TEXT,
	"description" TEXT,
	"subject" TEXT,
	startDate TEXT,
	_startDate TEXT,
	startCodeableConcept TEXT,
	"target" TEXT,
	statusDate DATE,
	_statusDate TEXT,
	statusReason TEXT,
	_statusReason TEXT,
	expressedBy TEXT,
	addresses TEXT,
	note TEXT,
	outcomeCode TEXT,
	outcomeReference TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lifecycleStatus)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (achievementStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("priority")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("description")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_startDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (startCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("target")
		REFERENCES goal_Target (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_statusDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_statusReason)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expressedBy)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (addresses)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcomeCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcomeReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE goal_Target(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	measure TEXT,
	detailQuantity TEXT,
	detailRange TEXT,
	detailCodeableConcept TEXT,
	detailString TEXT,
	_detailString TEXT,
	detailBoolean BOOLEAN,
	_detailBoolean TEXT,
	detailInteger INTEGER,
	_detailInteger TEXT,
	detailRatio TEXT,
	dueDate TEXT,
	_dueDate TEXT,
	dueDuration TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (measure)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detailString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detailBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detailInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE graphDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	"start" TEXT,
	_start TEXT,
	"profile" TEXT,
	link TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (link)
		REFERENCES graphDefinition_Link (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE graphDefinition_Link(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"path" TEXT,
	_path TEXT,
	sliceName TEXT,
	_sliceName TEXT,
	"min" INTEGER,
	_min TEXT,
	"max" TEXT,
	_max TEXT,
	"description" TEXT,
	_description TEXT,
	"target" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sliceName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("target")
		REFERENCES graphDefinition_Target (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE graphDefinition_Target(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	_type TEXT,
	params TEXT,
	_params TEXT,
	"profile" TEXT,
	compartment TEXT,
	link TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_params)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (compartment)
		REFERENCES graphDefinition_Compartment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (link)
		REFERENCES graphDefinition_Link (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE graphDefinition_Compartment(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"use" TEXT, --<code> enum: condition/requirement
	_use TEXT,
	"code" TEXT,
	_code TEXT,
	"rule" TEXT, --<code> enum: identical/matching/different/custom
	_rule TEXT,
	expression TEXT,
	_expression TEXT,
	"description" TEXT,
	_description TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rule)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE "group"(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	active BOOLEAN,
	_active TEXT,
	"type" TEXT, --<code> enum: person/animal/practitioner/device/medication/substance
	_type TEXT,
	actual BOOLEAN,
	_actual TEXT,
	"code" TEXT,
	"name" TEXT,
	_name TEXT,
	quantity INTEGER,
	_quantity TEXT,
	managingEntity TEXT,
	characteristic TEXT,
	"member" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_actual)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_quantity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (managingEntity)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (characteristic)
		REFERENCES group_Characteristic (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("member")
		REFERENCES group_Member (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE group_Characteristic(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	valueCodeableConcept TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueQuantity TEXT,
	valueRange TEXT,
	valueReference TEXT,
	exclude BOOLEAN,
	_exclude TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exclude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE group_Member(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	entity TEXT,
	"period" TEXT,
	inactive BOOLEAN,
	_inactive TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (entity)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_inactive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE guidanceResponse(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	requestIdentifier TEXT,
	identifier TEXT,
	moduleUri TEXT,
	_moduleUri TEXT,
	moduleCanonical TEXT,
	_moduleCanonical TEXT,
	moduleCodeableConcept TEXT,
	"status" TEXT, --<code> enum: success/data-requested/data-required/in-progress/failure/entered-in-error
	_status TEXT,
	"subject" TEXT,
	encounter TEXT,
	occurrenceDateTime DATETIME,
	_occurrenceDateTime TEXT,
	performer TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	note TEXT,
	evaluationMessage TEXT,
	outputParameters TEXT,
	"result" TEXT,
	dataRequirement TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_moduleUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_moduleCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (moduleCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (evaluationMessage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outputParameters)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("result")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE healthcareService(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	active BOOLEAN,
	_active TEXT,
	providedBy TEXT,
	category TEXT,
	"type" TEXT,
	specialty TEXT,
	"location" TEXT,
	"name" TEXT,
	_name TEXT,
	comment TEXT,
	_comment TEXT,
	extraDetails TEXT,
	_extraDetails TEXT,
	photo TEXT,
	telecom TEXT,
	coverageArea TEXT,
	serviceProvisionCode TEXT,
	eligibility TEXT,
	program TEXT,
	characteristic TEXT,
	communication TEXT,
	referralMethod TEXT,
	appointmentRequired BOOLEAN,
	_appointmentRequired TEXT,
	availableTime TEXT,
	notAvailable TEXT,
	availabilityExceptions TEXT,
	_availabilityExceptions TEXT,
	"endpoint" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (providedBy)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specialty)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_extraDetails)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (photo)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverageArea)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (serviceProvisionCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (eligibility)
		REFERENCES healthcareService_Eligibility (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (program)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (characteristic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (communication)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referralMethod)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_appointmentRequired)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (availableTime)
		REFERENCES healthcareService_AvailableTime (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (notAvailable)
		REFERENCES healthcareService_NotAvailable (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availabilityExceptions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("endpoint")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE healthcareService_Eligibility(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	comment TEXT,
	_comment TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE healthcareService_AvailableTime(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	daysOfWeek TEXT, --<code> enum: mon/tue/wed/thu/fri/sat/sun
	_daysOfWeek TEXT,
	allDay BOOLEAN,
	_allDay TEXT,
	availableStartTime TIME,
	_availableStartTime TEXT,
	availableEndTime TIME,
	_availableEndTime TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_daysOfWeek)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allDay)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availableStartTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availableEndTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE healthcareService_NotAvailable(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	during TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (during)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE imagingStudy(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: registered/available/cancelled/entered-in-error/unknown
	_status TEXT,
	modality TEXT,
	"subject" TEXT,
	encounter TEXT,
	"started" DATETIME,
	_started TEXT,
	basedOn TEXT,
	referrer TEXT,
	interpreter TEXT,
	"endpoint" TEXT,
	numberOfSeries INTEGER,
	_numberOfSeries TEXT,
	numberOfInstances INTEGER,
	_numberOfInstances TEXT,
	procedureReference TEXT,
	procedureCode TEXT,
	"location" TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	note TEXT,
	"description" TEXT,
	_description TEXT,
	series TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modality)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_started)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referrer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (interpreter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("endpoint")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfSeries)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfInstances)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (procedureReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (procedureCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (series)
		REFERENCES imagingStudy_Series (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE imagingStudy_Series(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	uid TEXT,
	_uid TEXT,
	number INTEGER,
	_number TEXT,
	modality TEXT,
	"description" TEXT,
	_description TEXT,
	numberOfInstances INTEGER,
	_numberOfInstances TEXT,
	"endpoint" TEXT,
	bodySite TEXT,
	laterality TEXT,
	specimen TEXT,
	"started" DATETIME,
	_started TEXT,
	performer TEXT,
	"instance" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_uid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_number)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modality)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfInstances)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("endpoint")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (laterality)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specimen)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_started)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES imagingStudy_Performer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("instance")
		REFERENCES imagingStudy_Instance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE imagingStudy_Performer(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"function" TEXT,
	actor TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("function")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE imagingStudy_Instance(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	uid TEXT,
	_uid TEXT,
	sopClass TEXT,
	number INTEGER,
	_number TEXT,
	title TEXT,
	_title TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_uid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sopClass)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_number)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE immunization(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	statusReason TEXT,
	vaccineCode TEXT,
	patient TEXT,
	encounter TEXT,
	occurrenceDateTime TEXT,
	_occurrenceDateTime TEXT,
	occurrenceString TEXT,
	_occurrenceString TEXT,
	recorded DATETIME,
	_recorded TEXT,
	primarySource BOOLEAN,
	_primarySource TEXT,
	reportOrigin TEXT,
	"location" TEXT,
	manufacturer TEXT,
	lotNumber TEXT,
	_lotNumber TEXT,
	expirationDate DATE,
	_expirationDate TEXT,
	"site" TEXT,
	route TEXT,
	doseQuantity TEXT,
	performer TEXT,
	note TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	isSubpotent BOOLEAN,
	_isSubpotent TEXT,
	subpotentReason TEXT,
	education TEXT,
	programEligibility TEXT,
	fundingSource TEXT,
	reaction TEXT,
	protocolApplied TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (vaccineCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recorded)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_primarySource)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reportOrigin)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lotNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expirationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("site")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (route)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (doseQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES immunization_Performer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isSubpotent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subpotentReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (education)
		REFERENCES immunization_Education (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (programEligibility)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fundingSource)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reaction)
		REFERENCES immunization_Reaction (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (protocolApplied)
		REFERENCES immunization_ProtocolApplied (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE immunization_Performer(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"function" TEXT,
	actor TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("function")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE immunization_Education(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	documentType TEXT,
	_documentType TEXT,
	reference TEXT,
	_reference TEXT,
	publicationDate DATETIME,
	_publicationDate TEXT,
	presentationDate DATETIME,
	_presentationDate TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reference)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publicationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_presentationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE immunization_Reaction(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"date" DATETIME,
	_date TEXT,
	detail TEXT,
	reported BOOLEAN,
	_reported TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reported)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE immunization_ProtocolApplied(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	series TEXT,
	_series TEXT,
	authority TEXT,
	targetDisease TEXT,
	doseNumberPositiveInt INTEGER,
	_doseNumberPositiveInt TEXT,
	doseNumberString TEXT,
	_doseNumberString TEXT,
	seriesDosesPositiveInt INTEGER,
	_seriesDosesPositiveInt TEXT,
	seriesDosesString TEXT,
	_seriesDosesString TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_series)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authority)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (targetDisease)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doseNumberPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doseNumberString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_seriesDosesPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_seriesDosesString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE immunizationEvaluation(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	patient TEXT,
	"date" DATETIME,
	_date TEXT,
	authority TEXT,
	targetDisease TEXT,
	immunizationEvent TEXT,
	doseStatus TEXT,
	doseStatusReason TEXT,
	"description" TEXT,
	_description TEXT,
	series TEXT,
	_series TEXT,
	doseNumberPositiveInt INTEGER,
	_doseNumberPositiveInt TEXT,
	doseNumberString TEXT,
	_doseNumberString TEXT,
	seriesDosesPositiveInt INTEGER,
	_seriesDosesPositiveInt TEXT,
	seriesDosesString TEXT,
	_seriesDosesString TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authority)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (targetDisease)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (immunizationEvent)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (doseStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (doseStatusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_series)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doseNumberPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doseNumberString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_seriesDosesPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_seriesDosesString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE immunizationRecommendation(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	patient TEXT,
	"date" DATETIME,
	_date TEXT,
	authority TEXT,
	recommendation TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authority)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recommendation)
		REFERENCES immunizationRecommendation_Recommendation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE immunizationRecommendation_Recommendation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	vaccineCode TEXT,
	targetDisease TEXT,
	contraindicatedVaccineCode TEXT,
	forecastStatus TEXT,
	forecastReason TEXT,
	dateCriterion TEXT,
	"description" TEXT,
	_description TEXT,
	series TEXT,
	_series TEXT,
	doseNumberPositiveInt INTEGER,
	_doseNumberPositiveInt TEXT,
	doseNumberString TEXT,
	_doseNumberString TEXT,
	seriesDosesPositiveInt INTEGER,
	_seriesDosesPositiveInt TEXT,
	seriesDosesString TEXT,
	_seriesDosesString TEXT,
	supportingImmunization TEXT,
	supportingPatientInformation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (vaccineCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (targetDisease)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contraindicatedVaccineCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (forecastStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (forecastReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dateCriterion)
		REFERENCES immunizationRecommendation_DateCriterion (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_series)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doseNumberPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doseNumberString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_seriesDosesPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_seriesDosesString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingImmunization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingPatientInformation)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE immunizationRecommendation_DateCriterion(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"value" DATETIME,
	_value TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE implementationGuide(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	copyright TEXT,
	_copyright TEXT,
	packageId TEXT,
	_packageId TEXT,
	license TEXT, --<code> enum: not-open-source/0BSD/AAL/Abstyles/Adobe-2006/Adobe-Glyph/ADSL/AFL-1.1/AFL-1.2/AFL-2.0/AFL-2.1/AFL-3.0/Afmparse/AGPL-1.0-only/AGPL-1.0-or-later/AGPL-3.0-only/AGPL-3.0-or-later/Aladdin/AMDPLPA/AML/AMPAS/ANTLR-PD/Apache-1.0/Apache-1.1/Apache-2.0/APAFML/APL-1.0/APSL-1.0/APSL-1.1/APSL-1.2/APSL-2.0/Artistic-1.0-cl8/Artistic-1.0-Perl/Artistic-1.0/Artistic-2.0/Bahyph/Barr/Beerware/BitTorrent-1.0/BitTorrent-1.1/Borceux/BSD-1-Clause/BSD-2-Clause-FreeBSD/BSD-2-Clause-NetBSD/BSD-2-Clause-Patent/BSD-2-Clause/BSD-3-Clause-Attribution/BSD-3-Clause-Clear/BSD-3-Clause-LBNL/BSD-3-Clause-No-Nuclear-License-2014/BSD-3-Clause-No-Nuclear-License/BSD-3-Clause-No-Nuclear-Warranty/BSD-3-Clause/BSD-4-Clause-UC/BSD-4-Clause/BSD-Protection/BSD-Source-Code/BSL-1.0/bzip2-1.0.5/bzip2-1.0.6/Caldera/CATOSL-1.1/CC-BY-1.0/CC-BY-2.0/CC-BY-2.5/CC-BY-3.0/CC-BY-4.0/CC-BY-NC-1.0/CC-BY-NC-2.0/CC-BY-NC-2.5/CC-BY-NC-3.0/CC-BY-NC-4.0/CC-BY-NC-ND-1.0/CC-BY-NC-ND-2.0/CC-BY-NC-ND-2.5/CC-BY-NC-ND-3.0/CC-BY-NC-ND-4.0/CC-BY-NC-SA-1.0/CC-BY-NC-SA-2.0/CC-BY-NC-SA-2.5/CC-BY-NC-SA-3.0/CC-BY-NC-SA-4.0/CC-BY-ND-1.0/CC-BY-ND-2.0/CC-BY-ND-2.5/CC-BY-ND-3.0/CC-BY-ND-4.0/CC-BY-SA-1.0/CC-BY-SA-2.0/CC-BY-SA-2.5/CC-BY-SA-3.0/CC-BY-SA-4.0/CC0-1.0/CDDL-1.0/CDDL-1.1/CDLA-Permissive-1.0/CDLA-Sharing-1.0/CECILL-1.0/CECILL-1.1/CECILL-2.0/CECILL-2.1/CECILL-B/CECILL-C/ClArtistic/CNRI-Jython/CNRI-Python-GPL-Compatible/CNRI-Python/Condor-1.1/CPAL-1.0/CPL-1.0/CPOL-1.02/Crossword/CrystalStacker/CUA-OPL-1.0/Cube/curl/D-FSL-1.0/diffmark/DOC/Dotseqn/DSDP/dvipdfm/ECL-1.0/ECL-2.0/EFL-1.0/EFL-2.0/eGenix/Entessa/EPL-1.0/EPL-2.0/ErlPL-1.1/EUDatagrid/EUPL-1.0/EUPL-1.1/EUPL-1.2/Eurosym/Fair/Frameworx-1.0/FreeImage/FSFAP/FSFUL/FSFULLR/FTL/GFDL-1.1-only/GFDL-1.1-or-later/GFDL-1.2-only/GFDL-1.2-or-later/GFDL-1.3-only/GFDL-1.3-or-later/Giftware/GL2PS/Glide/Glulxe/gnuplot/GPL-1.0-only/GPL-1.0-or-later/GPL-2.0-only/GPL-2.0-or-later/GPL-3.0-only/GPL-3.0-or-later/gSOAP-1.3b/HaskellReport/HPND/IBM-pibs/ICU/IJG/ImageMagick/iMatix/Imlib2/Info-ZIP/Intel-ACPI/Intel/Interbase-1.0/IPA/IPL-1.0/ISC/JasPer-2.0/JSON/LAL-1.2/LAL-1.3/Latex2e/Leptonica/LGPL-2.0-only/LGPL-2.0-or-later/LGPL-2.1-only/LGPL-2.1-or-later/LGPL-3.0-only/LGPL-3.0-or-later/LGPLLR/Libpng/libtiff/LiLiQ-P-1.1/LiLiQ-R-1.1/LiLiQ-Rplus-1.1/Linux-OpenIB/LPL-1.0/LPL-1.02/LPPL-1.0/LPPL-1.1/LPPL-1.2/LPPL-1.3a/LPPL-1.3c/MakeIndex/MirOS/MIT-0/MIT-advertising/MIT-CMU/MIT-enna/MIT-feh/MIT/MITNFA/Motosoto/mpich2/MPL-1.0/MPL-1.1/MPL-2.0-no-copyleft-exception/MPL-2.0/MS-PL/MS-RL/MTLL/Multics/Mup/NASA-1.3/Naumen/NBPL-1.0/NCSA/Net-SNMP/NetCDF/Newsletr/NGPL/NLOD-1.0/NLPL/Nokia/NOSL/Noweb/NPL-1.0/NPL-1.1/NPOSL-3.0/NRL/NTP/OCCT-PL/OCLC-2.0/ODbL-1.0/OFL-1.0/OFL-1.1/OGTSL/OLDAP-1.1/OLDAP-1.2/OLDAP-1.3/OLDAP-1.4/OLDAP-2.0.1/OLDAP-2.0/OLDAP-2.1/OLDAP-2.2.1/OLDAP-2.2.2/OLDAP-2.2/OLDAP-2.3/OLDAP-2.4/OLDAP-2.5/OLDAP-2.6/OLDAP-2.7/OLDAP-2.8/OML/OpenSSL/OPL-1.0/OSET-PL-2.1/OSL-1.0/OSL-1.1/OSL-2.0/OSL-2.1/OSL-3.0/PDDL-1.0/PHP-3.0/PHP-3.01/Plexus/PostgreSQL/psfrag/psutils/Python-2.0/Qhull/QPL-1.0/Rdisc/RHeCos-1.1/RPL-1.1/RPL-1.5/RPSL-1.0/RSA-MD/RSCPL/Ruby/SAX-PD/Saxpath/SCEA/Sendmail/SGI-B-1.0/SGI-B-1.1/SGI-B-2.0/SimPL-2.0/SISSL-1.2/SISSL/Sleepycat/SMLNJ/SMPPL/SNIA/Spencer-86/Spencer-94/Spencer-99/SPL-1.0/SugarCRM-1.1.3/SWL/TCL/TCP-wrappers/TMate/TORQUE-1.1/TOSL/Unicode-DFS-2015/Unicode-DFS-2016/Unicode-TOU/Unlicense/UPL-1.0/Vim/VOSTROM/VSL-1.0/W3C-19980720/W3C-20150513/W3C/Watcom-1.0/Wsuipa/WTFPL/X11/Xerox/XFree86-1.1/xinetd/Xnet/xpp/XSkat/YPL-1.0/YPL-1.1/Zed/Zend-2.0/Zimbra-1.3/Zimbra-1.4/zlib-acknowledgement/Zlib/ZPL-1.1/ZPL-2.0/ZPL-2.1
	_license TEXT,
	fhirVersion TEXT, --<code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1
	_fhirVersion TEXT,
	dependsOn TEXT,
	"global" TEXT,
	"definition" TEXT,
	manifest TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_packageId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_license)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fhirVersion)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dependsOn)
		REFERENCES implementationGuide_DependsOn (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("global")
		REFERENCES implementationGuide_Global (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("definition")
		REFERENCES implementationGuide_Definition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manifest)
		REFERENCES implementationGuide_Manifest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE implementationGuide_DependsOn(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	uri TEXT,
	packageId TEXT,
	_packageId TEXT,
	"version" TEXT,
	_version TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_packageId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE implementationGuide_Global(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	_type TEXT,
	"profile" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE implementationGuide_Definition(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	grouping TEXT,
	resource TEXT,
	page TEXT,
	"parameter" TEXT,
	template TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (grouping)
		REFERENCES implementationGuide_Grouping (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (resource)
		REFERENCES implementationGuide_Resource (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (page)
		REFERENCES implementationGuide_Page (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("parameter")
		REFERENCES implementationGuide_Parameter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (template)
		REFERENCES implementationGuide_Template (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE implementationGuide_Grouping(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"description" TEXT,
	_description TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE implementationGuide_Resource(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	reference TEXT,
	fhirVersion TEXT, --<code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1
	_fhirVersion TEXT,
	"name" TEXT,
	_name TEXT,
	"description" TEXT,
	_description TEXT,
	exampleBoolean BOOLEAN,
	_exampleBoolean TEXT,
	exampleCanonical TEXT,
	_exampleCanonical TEXT,
	groupingId TEXT,
	_groupingId TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fhirVersion)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exampleBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exampleCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_groupingId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE implementationGuide_Page(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	nameUrl TEXT,
	_nameUrl TEXT,
	nameReference TEXT,
	title TEXT,
	_title TEXT,
	generation TEXT, --<code> enum: html/markdown/xml/generated
	_generation TEXT,
	page TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_nameUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (nameReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_generation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (page)
		REFERENCES implementationGuide_Page (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE implementationGuide_Parameter(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT, --<code> enum: apply/path-resource/path-pages/path-tx-cache/expansion-parameter/rule-broken-links/generate-xml/generate-json/generate-turtle/html-template
	_code TEXT,
	"value" TEXT,
	_value TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE implementationGuide_Template(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	_code TEXT,
	"source" TEXT,
	_source TEXT,
	"scope" TEXT,
	_scope TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_source)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_scope)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE implementationGuide_Manifest(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	rendering TEXT,
	_rendering TEXT,
	resource TEXT,
	page TEXT,
	"image" TEXT,
	_image TEXT,
	other TEXT,
	_other TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rendering)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (resource)
		REFERENCES implementationGuide_Resource1 (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (page)
		REFERENCES implementationGuide_Page1 (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_image)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_other)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE implementationGuide_Resource1(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	reference TEXT,
	exampleBoolean BOOLEAN,
	_exampleBoolean TEXT,
	exampleCanonical TEXT,
	_exampleCanonical TEXT,
	relativePath TEXT,
	_relativePath TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exampleBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exampleCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_relativePath)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE implementationGuide_Page1(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	anchor TEXT,
	_anchor TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_anchor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE insurancePlan(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	"type" TEXT,
	"name" TEXT,
	_name TEXT,
	alias TEXT,
	_alias TEXT,
	"period" TEXT,
	ownedBy TEXT,
	administeredBy TEXT,
	coverageArea TEXT,
	contact TEXT,
	"endpoint" TEXT,
	network TEXT,
	coverage TEXT,
	"plan" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_alias)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ownedBy)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (administeredBy)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverageArea)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES insurancePlan_Contact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("endpoint")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (network)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES insurancePlan_Coverage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("plan")
		REFERENCES insurancePlan_Plan (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE insurancePlan_Contact(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	purpose TEXT,
	"name" TEXT,
	telecom TEXT,
	"address" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (purpose)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("address")
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE insurancePlan_Coverage(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	network TEXT,
	benefit TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (network)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (benefit)
		REFERENCES insurancePlan_Benefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE insurancePlan_Benefit(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	requirement TEXT,
	_requirement TEXT,
	"limit" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requirement)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("limit")
		REFERENCES insurancePlan_Limit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE insurancePlan_Limit(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"value" TEXT,
	"code" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("value")
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE insurancePlan_Plan(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"type" TEXT,
	coverageArea TEXT,
	network TEXT,
	generalCost TEXT,
	specificCost TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverageArea)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (network)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (generalCost)
		REFERENCES insurancePlan_GeneralCost (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specificCost)
		REFERENCES insurancePlan_SpecificCost (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE insurancePlan_GeneralCost(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	groupSize INTEGER,
	_groupSize TEXT,
	cost TEXT,
	comment TEXT,
	_comment TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_groupSize)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (cost)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE insurancePlan_SpecificCost(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	category TEXT,
	benefit TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (benefit)
		REFERENCES insurancePlan_Benefit1 (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE insurancePlan_Benefit1(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	cost TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (cost)
		REFERENCES insurancePlan_Cost (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE insurancePlan_Cost(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	applicability TEXT,
	qualifiers TEXT,
	"value" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (applicability)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (qualifiers)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("value")
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE invoice(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: draft/issued/balanced/cancelled/entered-in-error
	_status TEXT,
	cancelledReason TEXT,
	_cancelledReason TEXT,
	"type" TEXT,
	"subject" TEXT,
	recipient TEXT,
	"date" DATETIME,
	_date TEXT,
	participant TEXT,
	issuer TEXT,
	account TEXT,
	lineItem TEXT,
	totalPriceComponent TEXT,
	totalNet TEXT,
	totalGross TEXT,
	paymentTerms TEXT,
	_paymentTerms TEXT,
	note TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_cancelledReason)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recipient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participant)
		REFERENCES invoice_Participant (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (issuer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (account)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (lineItem)
		REFERENCES invoice_LineItem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (totalPriceComponent)
		REFERENCES invoice_PriceComponent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (totalNet)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (totalGross)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paymentTerms)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE invoice_Participant(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"role" TEXT,
	actor TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE invoice_LineItem(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"sequence" INTEGER,
	_sequence TEXT,
	chargeItemReference TEXT,
	chargeItemCodeableConcept TEXT,
	priceComponent TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (chargeItemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (chargeItemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (priceComponent)
		REFERENCES invoice_PriceComponent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE invoice_PriceComponent(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT, --<code> enum: base/surcharge/deduction/discount/tax/informational
	_type TEXT,
	"code" TEXT,
	factor REAL,
	_factor TEXT,
	amount TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE library(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	subtitle TEXT,
	_subtitle TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"type" TEXT,
	subjectCodeableConcept TEXT,
	subjectReference TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	"usage" TEXT,
	_usage TEXT,
	copyright TEXT,
	_copyright TEXT,
	approvalDate DATE,
	_approvalDate TEXT,
	lastReviewDate DATE,
	_lastReviewDate TEXT,
	effectivePeriod TEXT,
	topic TEXT,
	author TEXT,
	editor TEXT,
	reviewer TEXT,
	endorser TEXT,
	relatedArtifact TEXT,
	"parameter" TEXT,
	dataRequirement TEXT,
	content TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (editor)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reviewer)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (endorser)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("parameter")
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (content)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE linkage(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	active BOOLEAN,
	_active TEXT,
	author TEXT,
	item TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES linkage_Item (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE linkage_Item(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT, --<code> enum: source/alternate/historical
	_type TEXT,
	resource TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (resource)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE list(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: current/retired/entered-in-error
	_status TEXT,
	mode TEXT, --<code> enum: working/snapshot/changes
	_mode TEXT,
	title TEXT,
	_title TEXT,
	"code" TEXT,
	"subject" TEXT,
	encounter TEXT,
	"date" DATETIME,
	_date TEXT,
	"source" TEXT,
	orderedBy TEXT,
	note TEXT,
	entry TEXT,
	emptyReason TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (orderedBy)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (entry)
		REFERENCES list_Entry (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (emptyReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE list_Entry(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	flag TEXT,
	deleted BOOLEAN,
	_deleted TEXT,
	"date" DATETIME,
	_date TEXT,
	item TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (flag)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deleted)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE "location"(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: active/suspended/inactive
	_status TEXT,
	operationalStatus TEXT,
	"name" TEXT,
	_name TEXT,
	alias TEXT,
	_alias TEXT,
	"description" TEXT,
	_description TEXT,
	mode TEXT, --<code> enum: instance/kind
	_mode TEXT,
	"type" TEXT,
	telecom TEXT,
	"address" TEXT,
	physicalType TEXT,
	"position" TEXT,
	managingOrganization TEXT,
	partOf TEXT,
	hoursOfOperation TEXT,
	availabilityExceptions TEXT,
	_availabilityExceptions TEXT,
	"endpoint" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (operationalStatus)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_alias)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("address")
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (physicalType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("position")
		REFERENCES location_Position (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (managingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (hoursOfOperation)
		REFERENCES location_HoursOfOperation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availabilityExceptions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("endpoint")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE location_Position(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	longitude REAL,
	_longitude TEXT,
	latitude REAL,
	_latitude TEXT,
	altitude REAL,
	_altitude TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_longitude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_latitude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_altitude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE location_HoursOfOperation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	daysOfWeek TEXT,
	_daysOfWeek TEXT,
	allDay BOOLEAN,
	_allDay TEXT,
	openingTime TIME,
	_openingTime TEXT,
	closingTime TIME,
	_closingTime TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_daysOfWeek)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allDay)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_openingTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_closingTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE measure(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	subtitle TEXT,
	_subtitle TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	subjectCodeableConcept TEXT,
	subjectReference TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	"usage" TEXT,
	_usage TEXT,
	copyright TEXT,
	_copyright TEXT,
	approvalDate DATE,
	_approvalDate TEXT,
	lastReviewDate DATE,
	_lastReviewDate TEXT,
	effectivePeriod TEXT,
	topic TEXT,
	author TEXT,
	editor TEXT,
	reviewer TEXT,
	endorser TEXT,
	relatedArtifact TEXT,
	library TEXT,
	disclaimer TEXT,
	_disclaimer TEXT,
	scoring TEXT,
	compositeScoring TEXT,
	"type" TEXT,
	riskAdjustment TEXT,
	_riskAdjustment TEXT,
	rateAggregation TEXT,
	_rateAggregation TEXT,
	rationale TEXT,
	_rationale TEXT,
	clinicalRecommendationStatement TEXT,
	_clinicalRecommendationStatement TEXT,
	improvementNotation TEXT,
	"definition" TEXT,
	_definition TEXT,
	guidance TEXT,
	_guidance TEXT,
	"group" TEXT,
	supplementalData TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (editor)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reviewer)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (endorser)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_disclaimer)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (scoring)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (compositeScoring)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_riskAdjustment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rateAggregation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rationale)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_clinicalRecommendationStatement)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (improvementNotation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_guidance)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("group")
		REFERENCES measure_Group (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supplementalData)
		REFERENCES measure_SupplementalData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE measure_Group(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"description" TEXT,
	_description TEXT,
	"population" TEXT,
	stratifier TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("population")
		REFERENCES measure_Population (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (stratifier)
		REFERENCES measure_Stratifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE measure_Population(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"description" TEXT,
	_description TEXT,
	criteria TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (criteria)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE measure_Stratifier(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"description" TEXT,
	_description TEXT,
	criteria TEXT,
	component TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (criteria)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (component)
		REFERENCES measure_Component (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE measure_Component(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"description" TEXT,
	_description TEXT,
	criteria TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (criteria)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE measure_SupplementalData(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"usage" TEXT,
	"description" TEXT,
	_description TEXT,
	criteria TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("usage")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (criteria)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE measureReport(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: complete/pending/error
	_status TEXT,
	"type" TEXT, --<code> enum: individual/subject-list/summary/data-collection
	_type TEXT,
	measure TEXT,
	"subject" TEXT,
	"date" DATETIME,
	_date TEXT,
	reporter TEXT,
	"period" TEXT,
	improvementNotation TEXT,
	"group" TEXT,
	evaluatedResource TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reporter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (improvementNotation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("group")
		REFERENCES measureReport_Group (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (evaluatedResource)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE measureReport_Group(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"population" TEXT,
	measureScore TEXT,
	stratifier TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("population")
		REFERENCES measureReport_Population (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (measureScore)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (stratifier)
		REFERENCES measureReport_Stratifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE measureReport_Population(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"count" INTEGER,
	_count TEXT,
	subjectResults TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_count)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectResults)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE measureReport_Stratifier(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	stratum TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (stratum)
		REFERENCES measureReport_Stratum (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE measureReport_Stratum(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"value" TEXT,
	component TEXT,
	"population" TEXT,
	measureScore TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("value")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (component)
		REFERENCES measureReport_Component (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("population")
		REFERENCES measureReport_Population1 (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (measureScore)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE measureReport_Component(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"value" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("value")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE measureReport_Population1(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"count" INTEGER,
	_count TEXT,
	subjectResults TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_count)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectResults)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE media(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	basedOn TEXT,
	partOf TEXT,
	"status" TEXT,
	_status TEXT,
	"type" TEXT,
	modality TEXT,
	"view" TEXT,
	"subject" TEXT,
	encounter TEXT,
	createdDateTime TEXT,
	_createdDateTime TEXT,
	createdPeriod TEXT,
	issued DATETIME,
	_issued TEXT,
	operator TEXT,
	reasonCode TEXT,
	bodySite TEXT,
	deviceName TEXT,
	_deviceName TEXT,
	device TEXT,
	height INTEGER,
	_height TEXT,
	width INTEGER,
	_width TEXT,
	frames INTEGER,
	_frames TEXT,
	duration REAL,
	_duration TEXT,
	content TEXT,
	note TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modality)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("view")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_createdDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (createdPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issued)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (operator)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deviceName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (device)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_height)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_width)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_frames)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_duration)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (content)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medication(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"code" TEXT,
	"status" TEXT,
	_status TEXT,
	manufacturer TEXT,
	form TEXT,
	amount TEXT,
	ingredient TEXT,
	batch TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (form)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ingredient)
		REFERENCES medication_Ingredient (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (batch)
		REFERENCES medication_Batch (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medication_Ingredient(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	itemCodeableConcept TEXT,
	itemReference TEXT,
	isActive BOOLEAN,
	_isActive TEXT,
	strength TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isActive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (strength)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medication_Batch(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	lotNumber TEXT,
	_lotNumber TEXT,
	expirationDate DATETIME,
	_expirationDate TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lotNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expirationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationAdministration(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	instantiates TEXT,
	_instantiates TEXT,
	partOf TEXT,
	"status" TEXT,
	_status TEXT,
	statusReason TEXT,
	category TEXT,
	medicationCodeableConcept TEXT,
	medicationReference TEXT,
	"subject" TEXT,
	context TEXT,
	supportingInformation TEXT,
	effectiveDateTime TEXT,
	_effectiveDateTime TEXT,
	effectivePeriod TEXT,
	performer TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	request TEXT,
	device TEXT,
	note TEXT,
	dosage TEXT,
	eventHistory TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiates)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingInformation)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES medicationAdministration_Performer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (device)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dosage)
		REFERENCES medicationAdministration_Dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (eventHistory)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationAdministration_Performer(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"function" TEXT,
	actor TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("function")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationAdministration_Dosage(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"text" TEXT,
	_text TEXT,
	"site" TEXT,
	route TEXT,
	"method" TEXT,
	dose TEXT,
	rateRatio TEXT,
	rateQuantity TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("site")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (route)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dose)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationDispense(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	partOf TEXT,
	"status" TEXT,
	_status TEXT,
	statusReasonCodeableConcept TEXT,
	statusReasonReference TEXT,
	category TEXT,
	medicationCodeableConcept TEXT,
	medicationReference TEXT,
	"subject" TEXT,
	context TEXT,
	supportingInformation TEXT,
	performer TEXT,
	"location" TEXT,
	authorizingPrescription TEXT,
	"type" TEXT,
	quantity TEXT,
	daysSupply TEXT,
	whenPrepared DATETIME,
	_whenPrepared TEXT,
	whenHandedOver DATETIME,
	_whenHandedOver TEXT,
	destination TEXT,
	receiver TEXT,
	note TEXT,
	dosageInstruction TEXT,
	substitution TEXT,
	detectedIssue TEXT,
	eventHistory TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReasonCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingInformation)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES medicationDispense_Performer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authorizingPrescription)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (daysSupply)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_whenPrepared)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_whenHandedOver)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (destination)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (receiver)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dosageInstruction)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substitution)
		REFERENCES medicationDispense_Substitution (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detectedIssue)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (eventHistory)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationDispense_Performer(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"function" TEXT,
	actor TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("function")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationDispense_Substitution(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	wasSubstituted BOOLEAN,
	_wasSubstituted TEXT,
	"type" TEXT,
	reason TEXT,
	responsibleParty TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_wasSubstituted)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (responsibleParty)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"status" TEXT,
	_status TEXT,
	manufacturer TEXT,
	doseForm TEXT,
	amount TEXT,
	synonym TEXT,
	_synonym TEXT,
	relatedMedicationKnowledge TEXT,
	associatedMedication TEXT,
	productType TEXT,
	monograph TEXT,
	ingredient TEXT,
	preparationInstruction TEXT,
	_preparationInstruction TEXT,
	intendedRoute TEXT,
	cost TEXT,
	monitoringProgram TEXT,
	administrationGuidelines TEXT,
	medicineClassification TEXT,
	packaging TEXT,
	drugCharacteristic TEXT,
	contraindication TEXT,
	regulatory TEXT,
	kinetics TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (doseForm)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_synonym)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedMedicationKnowledge)
		REFERENCES medicationKnowledge_RelatedMedicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (associatedMedication)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (monograph)
		REFERENCES medicationKnowledge_Monograph (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ingredient)
		REFERENCES medicationKnowledge_Ingredient (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preparationInstruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (intendedRoute)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (cost)
		REFERENCES medicationKnowledge_Cost (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (monitoringProgram)
		REFERENCES medicationKnowledge_MonitoringProgram (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (administrationGuidelines)
		REFERENCES medicationKnowledge_AdministrationGuidelines (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicineClassification)
		REFERENCES medicationKnowledge_MedicineClassification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (packaging)
		REFERENCES medicationKnowledge_Packaging (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (drugCharacteristic)
		REFERENCES medicationKnowledge_DrugCharacteristic (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contraindication)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (regulatory)
		REFERENCES medicationKnowledge_Regulatory (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (kinetics)
		REFERENCES medicationKnowledge_Kinetics (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_RelatedMedicationKnowledge(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	reference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_Monograph(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	"source" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_Ingredient(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	itemCodeableConcept TEXT,
	itemReference TEXT,
	isActive BOOLEAN,
	_isActive TEXT,
	strength TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isActive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (strength)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_Cost(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	"source" TEXT,
	_source TEXT,
	cost TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_source)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (cost)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_MonitoringProgram(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	"name" TEXT,
	_name TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_AdministrationGuidelines(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	dosage TEXT,
	indicationCodeableConcept TEXT,
	indicationReference TEXT,
	patientCharacteristics TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dosage)
		REFERENCES medicationKnowledge_Dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (indicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (indicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patientCharacteristics)
		REFERENCES medicationKnowledge_PatientCharacteristics (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_Dosage(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	dosage TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_PatientCharacteristics(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	characteristicCodeableConcept TEXT,
	characteristicQuantity TEXT,
	"value" TEXT,
	_value TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (characteristicCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (characteristicQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_MedicineClassification(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	classification TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (classification)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_Packaging(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	quantity TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_DrugCharacteristic(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	valueCodeableConcept TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueQuantity TEXT,
	valueBase64Binary TEXT,
	_valueBase64Binary TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_Regulatory(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	regulatoryAuthority TEXT,
	substitution TEXT,
	schedule TEXT,
	maxDispense TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (regulatoryAuthority)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substitution)
		REFERENCES medicationKnowledge_Substitution (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (schedule)
		REFERENCES medicationKnowledge_Schedule (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDispense)
		REFERENCES medicationKnowledge_MaxDispense (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_Substitution(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	allowed BOOLEAN,
	_allowed TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allowed)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_Schedule(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	schedule TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (schedule)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_MaxDispense(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	quantity TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationKnowledge_Kinetics(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	areaUnderCurve TEXT,
	lethalDose50 TEXT,
	halfLifePeriod TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (areaUnderCurve)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (lethalDose50)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (halfLifePeriod)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationRequest(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	statusReason TEXT,
	intent TEXT,
	_intent TEXT,
	category TEXT,
	"priority" TEXT,
	_priority TEXT,
	doNotPerform BOOLEAN,
	_doNotPerform TEXT,
	reportedBoolean BOOLEAN,
	_reportedBoolean TEXT,
	reportedReference TEXT,
	medicationCodeableConcept TEXT,
	medicationReference TEXT,
	"subject" TEXT,
	encounter TEXT,
	supportingInformation TEXT,
	authoredOn DATETIME,
	_authoredOn TEXT,
	requester TEXT,
	performer TEXT,
	performerType TEXT,
	recorder TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	instantiatesCanonical TEXT,
	_instantiatesCanonical TEXT,
	instantiatesUri TEXT,
	_instantiatesUri TEXT,
	basedOn TEXT,
	groupIdentifier TEXT,
	courseOfTherapyType TEXT,
	insurance TEXT,
	note TEXT,
	dosageInstruction TEXT,
	dispenseRequest TEXT,
	substitution TEXT,
	priorPrescription TEXT,
	detectedIssue TEXT,
	eventHistory TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doNotPerform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reportedBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reportedReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingInformation)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requester)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performerType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recorder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (groupIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (courseOfTherapyType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurance)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dosageInstruction)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dispenseRequest)
		REFERENCES medicationRequest_DispenseRequest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substitution)
		REFERENCES medicationRequest_Substitution (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (priorPrescription)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detectedIssue)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (eventHistory)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationRequest_DispenseRequest(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	initialFill TEXT,
	dispenseInterval TEXT,
	validityPeriod TEXT,
	numberOfRepeatsAllowed INTEGER,
	_numberOfRepeatsAllowed TEXT,
	quantity TEXT,
	expectedSupplyDuration TEXT,
	performer TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (initialFill)
		REFERENCES medicationRequest_InitialFill (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dispenseInterval)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validityPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfRepeatsAllowed)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expectedSupplyDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationRequest_InitialFill(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	quantity TEXT,
	duration TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (duration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationRequest_Substitution(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	allowedBoolean BOOLEAN,
	_allowedBoolean TEXT,
	allowedCodeableConcept TEXT,
	reason TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allowedBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (allowedCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicationStatement(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	basedOn TEXT,
	partOf TEXT,
	"status" TEXT,
	_status TEXT,
	statusReason TEXT,
	category TEXT,
	medicationCodeableConcept TEXT,
	medicationReference TEXT,
	"subject" TEXT,
	context TEXT,
	effectiveDateTime TEXT,
	_effectiveDateTime TEXT,
	effectivePeriod TEXT,
	dateAsserted DATETIME,
	_dateAsserted TEXT,
	informationSource TEXT,
	derivedFrom TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	note TEXT,
	dosage TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dateAsserted)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (informationSource)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (derivedFrom)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProduct(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"type" TEXT,
	"domain" TEXT,
	combinedPharmaceuticalDoseForm TEXT,
	legalStatusOfSupply TEXT,
	additionalMonitoringIndicator TEXT,
	specialMeasures TEXT,
	_specialMeasures TEXT,
	paediatricUseIndicator TEXT,
	productClassification TEXT,
	marketingStatus TEXT,
	pharmaceuticalProduct TEXT,
	packagedMedicinalProduct TEXT,
	attachedDocument TEXT,
	masterFile TEXT,
	contact TEXT,
	clinicalTrial TEXT,
	"name" TEXT,
	crossReference TEXT,
	manufacturingBusinessOperation TEXT,
	specialDesignation TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("domain")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (combinedPharmaceuticalDoseForm)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legalStatusOfSupply)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additionalMonitoringIndicator)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_specialMeasures)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (paediatricUseIndicator)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productClassification)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (marketingStatus)
		REFERENCES marketingStatus (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (pharmaceuticalProduct)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (packagedMedicinalProduct)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (attachedDocument)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (masterFile)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (clinicalTrial)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES medicinalProduct_Name (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (crossReference)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturingBusinessOperation)
		REFERENCES medicinalProduct_ManufacturingBusinessOperation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specialDesignation)
		REFERENCES medicinalProduct_SpecialDesignation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProduct_Name(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	productName TEXT,
	_productName TEXT,
	namePart TEXT,
	countryLanguage TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_productName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (namePart)
		REFERENCES medicinalProduct_NamePart (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (countryLanguage)
		REFERENCES medicinalProduct_CountryLanguage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProduct_NamePart(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	part TEXT,
	_part TEXT,
	"type" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_part)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProduct_CountryLanguage(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	country TEXT,
	jurisdiction TEXT,
	"language" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (country)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("language")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProduct_ManufacturingBusinessOperation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	operationType TEXT,
	authorisationReferenceNumber TEXT,
	effectiveDate DATETIME,
	_effectiveDate TEXT,
	confidentialityIndicator TEXT,
	manufacturer TEXT,
	regulator TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (operationType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authorisationReferenceNumber)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (confidentialityIndicator)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (regulator)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProduct_SpecialDesignation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"type" TEXT,
	intendedUse TEXT,
	indicationCodeableConcept TEXT,
	indicationReference TEXT,
	"status" TEXT,
	"date" DATETIME,
	_date TEXT,
	species TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (intendedUse)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (indicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (indicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (species)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductAuthorization(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"subject" TEXT,
	country TEXT,
	jurisdiction TEXT,
	"status" TEXT,
	statusDate DATETIME,
	_statusDate TEXT,
	restoreDate DATETIME,
	_restoreDate TEXT,
	validityPeriod TEXT,
	dataExclusivityPeriod TEXT,
	dateOfFirstAuthorization DATETIME,
	_dateOfFirstAuthorization TEXT,
	internationalBirthDate DATETIME,
	_internationalBirthDate TEXT,
	legalBasis TEXT,
	jurisdictionalAuthorization TEXT,
	holder TEXT,
	regulator TEXT,
	"procedure" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (country)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_statusDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_restoreDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validityPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dataExclusivityPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dateOfFirstAuthorization)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_internationalBirthDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legalBasis)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdictionalAuthorization)
		REFERENCES medicinalProductAuthorization_JurisdictionalAuthorization (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (holder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (regulator)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("procedure")
		REFERENCES medicinalProductAuthorization_Procedure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductAuthorization_JurisdictionalAuthorization(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	country TEXT,
	jurisdiction TEXT,
	legalStatusOfSupply TEXT,
	validityPeriod TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (country)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legalStatusOfSupply)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validityPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductAuthorization_Procedure(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"type" TEXT,
	datePeriod TEXT,
	dateDateTime TEXT,
	_dateDateTime TEXT,
	application TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (datePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dateDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (application)
		REFERENCES medicinalProductAuthorization_Procedure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductContraindication(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"subject" TEXT,
	disease TEXT,
	diseaseStatus TEXT,
	comorbidity TEXT,
	therapeuticIndication TEXT,
	otherTherapy TEXT,
	"population" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (disease)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diseaseStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (comorbidity)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (therapeuticIndication)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (otherTherapy)
		REFERENCES medicinalProductContraindication_OtherTherapy (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("population")
		REFERENCES "population" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductContraindication_OtherTherapy(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	therapyRelationshipType TEXT,
	medicationCodeableConcept TEXT,
	medicationReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (therapyRelationshipType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductIndication(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"subject" TEXT,
	diseaseSymptomProcedure TEXT,
	diseaseStatus TEXT,
	comorbidity TEXT,
	intendedEffect TEXT,
	duration TEXT,
	otherTherapy TEXT,
	undesirableEffect TEXT,
	"population" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diseaseSymptomProcedure)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diseaseStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (comorbidity)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (intendedEffect)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (duration)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (otherTherapy)
		REFERENCES medicinalProductIndication_OtherTherapy (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (undesirableEffect)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("population")
		REFERENCES "population" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductIndication_OtherTherapy(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	therapyRelationshipType TEXT,
	medicationCodeableConcept TEXT,
	medicationReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (therapyRelationshipType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductIngredient(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"role" TEXT,
	allergenicIndicator BOOLEAN,
	_allergenicIndicator TEXT,
	manufacturer TEXT,
	specifiedSubstance TEXT,
	substance TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allergenicIndicator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specifiedSubstance)
		REFERENCES medicinalProductIngredient_SpecifiedSubstance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substance)
		REFERENCES medicinalProductIngredient_Substance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductIngredient_SpecifiedSubstance(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"group" TEXT,
	confidentiality TEXT,
	strength TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("group")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (confidentiality)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (strength)
		REFERENCES medicinalProductIngredient_Strength (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductIngredient_Strength(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	presentation TEXT,
	presentationLowLimit TEXT,
	concentration TEXT,
	concentrationLowLimit TEXT,
	measurementPoint TEXT,
	_measurementPoint TEXT,
	country TEXT,
	referenceStrength TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (presentation)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (presentationLowLimit)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (concentration)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (concentrationLowLimit)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_measurementPoint)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (country)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceStrength)
		REFERENCES medicinalProductIngredient_ReferenceStrength (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductIngredient_ReferenceStrength(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	substance TEXT,
	strength TEXT,
	strengthLowLimit TEXT,
	measurementPoint TEXT,
	_measurementPoint TEXT,
	country TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substance)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (strength)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (strengthLowLimit)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_measurementPoint)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (country)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductIngredient_Substance(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	strength TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (strength)
		REFERENCES medicinalProductIngredient_Strength (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductInteraction(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"subject" TEXT,
	"description" TEXT,
	_description TEXT,
	interactant TEXT,
	"type" TEXT,
	effect TEXT,
	incidence TEXT,
	management TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (interactant)
		REFERENCES medicinalProductInteraction_Interactant (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effect)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (incidence)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (management)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductInteraction_Interactant(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	itemReference TEXT,
	itemCodeableConcept TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductManufactured(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	manufacturedDoseForm TEXT,
	unitOfPresentation TEXT,
	quantity TEXT,
	manufacturer TEXT,
	ingredient TEXT,
	physicalCharacteristics TEXT,
	otherCharacteristics TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturedDoseForm)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitOfPresentation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ingredient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (physicalCharacteristics)
		REFERENCES prodCharacteristic (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (otherCharacteristics)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductPackaged(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"subject" TEXT,
	"description" TEXT,
	_description TEXT,
	legalStatusOfSupply TEXT,
	marketingStatus TEXT,
	marketingAuthorization TEXT,
	manufacturer TEXT,
	batchIdentifier TEXT,
	packageItem TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legalStatusOfSupply)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (marketingStatus)
		REFERENCES marketingStatus (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (marketingAuthorization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (batchIdentifier)
		REFERENCES medicinalProductPackaged_BatchIdentifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (packageItem)
		REFERENCES medicinalProductPackaged_PackageItem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductPackaged_BatchIdentifier(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	outerPackaging TEXT,
	immediatePackaging TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outerPackaging)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (immediatePackaging)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductPackaged_PackageItem(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"type" TEXT,
	quantity TEXT,
	material TEXT,
	alternateMaterial TEXT,
	device TEXT,
	manufacturedItem TEXT,
	packageItem TEXT,
	physicalCharacteristics TEXT,
	otherCharacteristics TEXT,
	shelfLifeStorage TEXT,
	manufacturer TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (material)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (alternateMaterial)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (device)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturedItem)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (packageItem)
		REFERENCES medicinalProductPackaged_PackageItem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (physicalCharacteristics)
		REFERENCES prodCharacteristic (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (otherCharacteristics)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (shelfLifeStorage)
		REFERENCES productShelfLife (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductPharmaceutical(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	administrableDoseForm TEXT,
	unitOfPresentation TEXT,
	ingredient TEXT,
	device TEXT,
	"characteristics" TEXT,
	routeOfAdministration TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (administrableDoseForm)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitOfPresentation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ingredient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (device)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("characteristics")
		REFERENCES medicinalProductPharmaceutical_Characteristics (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (routeOfAdministration)
		REFERENCES medicinalProductPharmaceutical_RouteOfAdministration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductPharmaceutical_Characteristics(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"status" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductPharmaceutical_RouteOfAdministration(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	firstDose TEXT,
	maxSingleDose TEXT,
	maxDosePerDay TEXT,
	maxDosePerTreatmentPeriod TEXT,
	maxTreatmentPeriod TEXT,
	targetSpecies TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (firstDose)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxSingleDose)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDosePerDay)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDosePerTreatmentPeriod)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxTreatmentPeriod)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (targetSpecies)
		REFERENCES medicinalProductPharmaceutical_TargetSpecies (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductPharmaceutical_TargetSpecies(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	withdrawalPeriod TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (withdrawalPeriod)
		REFERENCES medicinalProductPharmaceutical_WithdrawalPeriod (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductPharmaceutical_WithdrawalPeriod(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	tissue TEXT,
	"value" TEXT,
	supportingInformation TEXT,
	_supportingInformation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (tissue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("value")
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_supportingInformation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE medicinalProductUndesirableEffect(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"subject" TEXT,
	symptomConditionEffect TEXT,
	classification TEXT,
	frequencyOfOccurrence TEXT,
	"population" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (symptomConditionEffect)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (classification)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (frequencyOfOccurrence)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("population")
		REFERENCES "population" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE messageDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	replaces TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	copyright TEXT,
	_copyright TEXT,
	base TEXT,
	parent TEXT,
	eventCoding TEXT,
	eventUri TEXT,
	_eventUri TEXT,
	category TEXT, --<code> enum: consequence/currency/notification
	_category TEXT,
	focus TEXT,
	responseRequired TEXT, --<code> enum: always/on-error/never/on-success
	_responseRequired TEXT,
	allowedResponse TEXT,
	graph TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (eventCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_eventUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_category)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (focus)
		REFERENCES messageDefinition_Focus (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_responseRequired)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (allowedResponse)
		REFERENCES messageDefinition_AllowedResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE messageDefinition_Focus(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	_code TEXT,
	"profile" TEXT,
	"min" INTEGER,
	_min TEXT,
	"max" TEXT,
	_max TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE messageDefinition_AllowedResponse(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	message TEXT,
	situation TEXT,
	_situation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_situation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE messageHeader(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	eventCoding TEXT,
	eventUri TEXT,
	_eventUri TEXT,
	destination TEXT,
	sender TEXT,
	enterer TEXT,
	author TEXT,
	"source" TEXT,
	responsible TEXT,
	reason TEXT,
	response TEXT,
	focus TEXT,
	"definition" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (eventCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_eventUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (destination)
		REFERENCES messageHeader_Destination (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sender)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enterer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES messageHeader_Source (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (responsible)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (response)
		REFERENCES messageHeader_Response (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (focus)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE messageHeader_Destination(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"target" TEXT,
	"endpoint" TEXT,
	_endpoint TEXT,
	receiver TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("target")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_endpoint)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (receiver)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE messageHeader_Source(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	software TEXT,
	_software TEXT,
	"version" TEXT,
	_version TEXT,
	contact TEXT,
	"endpoint" TEXT,
	_endpoint TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_software)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_endpoint)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE messageHeader_Response(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	_identifier TEXT,
	"code" TEXT, --<code> enum: ok/transient-error/fatal-error
	_code TEXT,
	details TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_identifier)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (details)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE molecularSequence(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"type" TEXT, --<code> enum: aa/dna/rna
	_type TEXT,
	coordinateSystem INTEGER,
	_coordinateSystem TEXT,
	patient TEXT,
	specimen TEXT,
	device TEXT,
	performer TEXT,
	quantity TEXT,
	referenceSeq TEXT,
	variant TEXT,
	observedSeq TEXT,
	_observedSeq TEXT,
	quality TEXT,
	readCoverage INTEGER,
	_readCoverage TEXT,
	repository TEXT,
	pointer TEXT,
	structureVariant TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_coordinateSystem)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specimen)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (device)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceSeq)
		REFERENCES molecularSequence_ReferenceSeq (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (variant)
		REFERENCES molecularSequence_Variant (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_observedSeq)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quality)
		REFERENCES molecularSequence_Quality (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_readCoverage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (repository)
		REFERENCES molecularSequence_Repository (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (pointer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (structureVariant)
		REFERENCES molecularSequence_StructureVariant (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE molecularSequence_ReferenceSeq(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	chromosome TEXT,
	genomeBuild TEXT,
	_genomeBuild TEXT,
	orientation TEXT, --<code> enum: sense/antisense
	_orientation TEXT,
	referenceSeqId TEXT,
	referenceSeqPointer TEXT,
	referenceSeqString TEXT,
	_referenceSeqString TEXT,
	strand TEXT, --<code> enum: watson/crick
	_strand TEXT,
	windowStart INTEGER,
	_windowStart TEXT,
	windowEnd INTEGER,
	_windowEnd TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (chromosome)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_genomeBuild)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_orientation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceSeqId)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceSeqPointer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_referenceSeqString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_strand)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_windowStart)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_windowEnd)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE molecularSequence_Variant(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"start" INTEGER,
	_start TEXT,
	"end" INTEGER,
	_end TEXT,
	observedAllele TEXT,
	_observedAllele TEXT,
	referenceAllele TEXT,
	_referenceAllele TEXT,
	cigar TEXT,
	_cigar TEXT,
	variantPointer TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_observedAllele)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_referenceAllele)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_cigar)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (variantPointer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE molecularSequence_Quality(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT, --<code> enum: indel/snp/unknown
	_type TEXT,
	standardSequence TEXT,
	"start" INTEGER,
	_start TEXT,
	"end" INTEGER,
	_end TEXT,
	score TEXT,
	"method" TEXT,
	truthTP REAL,
	_truthTP TEXT,
	queryTP REAL,
	_queryTP TEXT,
	truthFN REAL,
	_truthFN TEXT,
	queryFP REAL,
	_queryFP TEXT,
	gtFP REAL,
	_gtFP TEXT,
	precision REAL,
	_precision TEXT,
	recall REAL,
	_recall TEXT,
	fScore REAL,
	_fScore TEXT,
	roc TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (standardSequence)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (score)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_truthTP)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_queryTP)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_truthFN)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_queryFP)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gtFP)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_precision)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recall)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fScore)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (roc)
		REFERENCES molecularSequence_Roc (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE molecularSequence_Roc(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	score INTEGER,
	_score TEXT,
	numTP INTEGER,
	_numTP TEXT,
	numFP INTEGER,
	_numFP TEXT,
	numFN INTEGER,
	_numFN TEXT,
	precision REAL,
	_precision TEXT,
	sensitivity REAL,
	_sensitivity TEXT,
	fMeasure REAL,
	_fMeasure TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_score)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numTP)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numFP)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numFN)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_precision)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sensitivity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fMeasure)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE molecularSequence_Repository(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT, --<code> enum: directlink/openapi/login/oauth/other
	_type TEXT,
	"url" TEXT,
	_url TEXT,
	"name" TEXT,
	_name TEXT,
	datasetId TEXT,
	_datasetId TEXT,
	variantsetId TEXT,
	_variantsetId TEXT,
	readsetId TEXT,
	_readsetId TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_datasetId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_variantsetId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_readsetId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE molecularSequence_StructureVariant(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	variantType TEXT,
	exact BOOLEAN,
	_exact TEXT,
	"length" INTEGER,
	_length TEXT,
	"outer" TEXT,
	"inner" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (variantType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exact)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_length)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("outer")
		REFERENCES molecularSequence_Outer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("inner")
		REFERENCES molecularSequence_Inner (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE molecularSequence_Outer(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"start" INTEGER,
	_start TEXT,
	"end" INTEGER,
	_end TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE molecularSequence_Inner(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"start" INTEGER,
	_start TEXT,
	"end" INTEGER,
	_end TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE namingSystem(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	kind TEXT, --<code> enum: codesystem/identifier/root
	_kind TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	responsible TEXT,
	_responsible TEXT,
	"type" TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	"usage" TEXT,
	_usage TEXT,
	uniqueId TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_responsible)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (uniqueId)
		REFERENCES namingSystem_UniqueId (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE namingSystem_UniqueId(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT, --<code> enum: oid/uuid/uri/other
	_type TEXT,
	"value" TEXT,
	_value TEXT,
	preferred BOOLEAN,
	_preferred TEXT,
	comment TEXT,
	_comment TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preferred)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE nutritionOrder(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	instantiatesCanonical TEXT,
	instantiatesUri TEXT,
	_instantiatesUri TEXT,
	instantiates TEXT,
	_instantiates TEXT,
	"status" TEXT,
	_status TEXT,
	intent TEXT,
	_intent TEXT,
	patient TEXT,
	encounter TEXT,
	"dateTime" DATETIME,
	_dateTime TEXT,
	orderer TEXT,
	allergyIntolerance TEXT,
	foodPreferenceModifier TEXT,
	excludeFoodModifier TEXT,
	oralDiet TEXT,
	supplement TEXT,
	enteralFormula TEXT,
	note TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiates)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (orderer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (allergyIntolerance)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (foodPreferenceModifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (excludeFoodModifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (oralDiet)
		REFERENCES nutritionOrder_OralDiet (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supplement)
		REFERENCES nutritionOrder_Supplement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enteralFormula)
		REFERENCES nutritionOrder_EnteralFormula (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE nutritionOrder_OralDiet(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	schedule TEXT,
	nutrient TEXT,
	texture TEXT,
	fluidConsistencyType TEXT,
	instruction TEXT,
	_instruction TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (schedule)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (nutrient)
		REFERENCES nutritionOrder_Nutrient (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (texture)
		REFERENCES nutritionOrder_Texture (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fluidConsistencyType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE nutritionOrder_Nutrient(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	modifier TEXT,
	amount TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE nutritionOrder_Texture(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	modifier TEXT,
	foodType TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (foodType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE nutritionOrder_Supplement(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	productName TEXT,
	_productName TEXT,
	schedule TEXT,
	quantity TEXT,
	instruction TEXT,
	_instruction TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_productName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (schedule)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE nutritionOrder_EnteralFormula(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	baseFormulaType TEXT,
	baseFormulaProductName TEXT,
	_baseFormulaProductName TEXT,
	additiveType TEXT,
	additiveProductName TEXT,
	_additiveProductName TEXT,
	caloricDensity TEXT,
	routeofAdministration TEXT,
	administration TEXT,
	maxVolumeToDeliver TEXT,
	administrationInstruction TEXT,
	_administrationInstruction TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (baseFormulaType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_baseFormulaProductName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additiveType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_additiveProductName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (caloricDensity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (routeofAdministration)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (administration)
		REFERENCES nutritionOrder_Administration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxVolumeToDeliver)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_administrationInstruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE nutritionOrder_Administration(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	schedule TEXT,
	quantity TEXT,
	rateQuantity TEXT,
	rateRatio TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (schedule)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE observation(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	basedOn TEXT,
	partOf TEXT,
	"status" TEXT, --<code> enum: registered/preliminary/final/amended/corrected/cancelled/entered-in-error/unknown
	_status TEXT,
	category TEXT,
	"code" TEXT,
	"subject" TEXT,
	focus TEXT,
	encounter TEXT,
	effectiveDateTime TEXT,
	_effectiveDateTime TEXT,
	effectivePeriod TEXT,
	effectiveTiming TEXT,
	effectiveInstant TEXT,
	_effectiveInstant TEXT,
	issued DATETIME,
	_issued TEXT,
	performer TEXT,
	valueQuantity TEXT,
	valueCodeableConcept TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueInteger INTEGER,
	_valueInteger TEXT,
	valueRange TEXT,
	valueRatio TEXT,
	valueSampledData TEXT,
	valueTime TEXT,
	_valueTime TEXT,
	valueDateTime TEXT,
	_valueDateTime TEXT,
	valuePeriod TEXT,
	dataAbsentReason TEXT,
	interpretation TEXT,
	note TEXT,
	bodySite TEXT,
	"method" TEXT,
	specimen TEXT,
	device TEXT,
	referenceRange TEXT,
	hasMember TEXT,
	derivedFrom TEXT,
	component TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (focus)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectiveTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issued)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dataAbsentReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (interpretation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specimen)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (device)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceRange)
		REFERENCES observation_ReferenceRange (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (hasMember)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (derivedFrom)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (component)
		REFERENCES observation_Component (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE observation_ReferenceRange(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	low TEXT,
	high TEXT,
	"type" TEXT,
	appliesTo TEXT,
	age TEXT,
	"text" TEXT,
	_text TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (low)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (high)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (appliesTo)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (age)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE observation_Component(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	valueQuantity TEXT,
	valueCodeableConcept TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueInteger INTEGER,
	_valueInteger TEXT,
	valueRange TEXT,
	valueRatio TEXT,
	valueSampledData TEXT,
	valueTime TEXT,
	_valueTime TEXT,
	valueDateTime TEXT,
	_valueDateTime TEXT,
	valuePeriod TEXT,
	dataAbsentReason TEXT,
	interpretation TEXT,
	referenceRange TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dataAbsentReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (interpretation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceRange)
		REFERENCES observation_ReferenceRange (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE observationDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	category TEXT,
	"code" TEXT,
	identifier TEXT,
	permittedDataType TEXT, --<code> enum: Quantity/CodeableConcept/string/boolean/integer/Range/Ratio/SampledData/time/dateTime/Period
	_permittedDataType TEXT,
	multipleResultsAllowed BOOLEAN,
	_multipleResultsAllowed TEXT,
	"method" TEXT,
	preferredReportName TEXT,
	_preferredReportName TEXT,
	quantitativeDetails TEXT,
	qualifiedInterval TEXT,
	validCodedValueSet TEXT,
	normalCodedValueSet TEXT,
	abnormalCodedValueSet TEXT,
	criticalCodedValueSet TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_permittedDataType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_multipleResultsAllowed)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preferredReportName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantitativeDetails)
		REFERENCES observationDefinition_QuantitativeDetails (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (qualifiedInterval)
		REFERENCES observationDefinition_QualifiedInterval (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validCodedValueSet)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (normalCodedValueSet)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (abnormalCodedValueSet)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (criticalCodedValueSet)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE observationDefinition_QuantitativeDetails(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	customaryUnit TEXT,
	unit TEXT,
	conversionFactor REAL,
	_conversionFactor TEXT,
	decimalPrecision INTEGER,
	_decimalPrecision TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (customaryUnit)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unit)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_conversionFactor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_decimalPrecision)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE observationDefinition_QualifiedInterval(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	category TEXT, --<code> enum: reference/critical/absolute
	_category TEXT,
	"range" TEXT,
	context TEXT,
	appliesTo TEXT,
	gender TEXT, --<code> enum: male/female/other/unknown
	_gender TEXT,
	age TEXT,
	gestationalAge TEXT,
	"condition" TEXT,
	_condition TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_category)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("range")
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (appliesTo)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gender)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (age)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (gestationalAge)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_condition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE operationDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	kind TEXT, --<code> enum: operation/query
	_kind TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	affectsState BOOLEAN,
	_affectsState TEXT,
	"code" TEXT,
	_code TEXT,
	comment TEXT,
	_comment TEXT,
	base TEXT,
	resource TEXT,
	_resource TEXT,
	"system" BOOLEAN,
	_system TEXT,
	"type" BOOLEAN,
	_type TEXT,
	"instance" BOOLEAN,
	_instance TEXT,
	inputProfile TEXT,
	outputProfile TEXT,
	"parameter" TEXT,
	overload TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_affectsState)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_resource)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instance)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("parameter")
		REFERENCES operationDefinition_Parameter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (overload)
		REFERENCES operationDefinition_Overload (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE operationDefinition_Parameter(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"use" TEXT, --<code> enum: in/out
	_use TEXT,
	"min" INTEGER,
	_min TEXT,
	"max" TEXT,
	_max TEXT,
	documentation TEXT,
	_documentation TEXT,
	"type" TEXT,
	_type TEXT,
	targetProfile TEXT,
	searchType TEXT, --<code> enum: number/date/string/token/reference/composite/quantity/uri/special
	_searchType TEXT,
	"binding" TEXT,
	referencedFrom TEXT,
	part TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_searchType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("binding")
		REFERENCES operationDefinition_Binding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referencedFrom)
		REFERENCES operationDefinition_ReferencedFrom (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (part)
		REFERENCES operationDefinition_Parameter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE operationDefinition_Binding(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	strength TEXT, --<code> enum: required/extensible/preferred/example
	_strength TEXT,
	valueSet TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_strength)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE operationDefinition_ReferencedFrom(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"source" TEXT,
	_source TEXT,
	sourceId TEXT,
	_sourceId TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_source)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sourceId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE operationDefinition_Overload(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	parameterName TEXT,
	_parameterName TEXT,
	comment TEXT,
	_comment TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_parameterName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE operationOutcome(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	issue TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (issue)
		REFERENCES operationOutcome_Issue (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE operationOutcome_Issue(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	severity TEXT, --<code> enum: fatal/error/warning/information
	_severity TEXT,
	"code" TEXT, --<code> enum: invalid/structure/required/value/invariant/security/login/unknown/expired/forbidden/suppressed/processing/not-supported/duplicate/multiple-matches/not-found/deleted/too-long/code-invalid/extension/too-costly/business-rule/conflict/transient/lock-error/no-store/exception/timeout/incomplete/throttled/informational
	_code TEXT,
	details TEXT,
	diagnostics TEXT,
	_diagnostics TEXT,
	"location" TEXT,
	_location TEXT,
	expression TEXT,
	_expression TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_severity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (details)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_diagnostics)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_location)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE organization(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	active BOOLEAN,
	_active TEXT,
	"type" TEXT,
	"name" TEXT,
	_name TEXT,
	alias TEXT,
	_alias TEXT,
	telecom TEXT,
	"address" TEXT,
	partOf TEXT,
	contact TEXT,
	"endpoint" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_alias)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("address")
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES organization_Contact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("endpoint")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE organization_Contact(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	purpose TEXT,
	"name" TEXT,
	telecom TEXT,
	"address" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (purpose)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("address")
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE organizationAffiliation(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	active BOOLEAN,
	_active TEXT,
	"period" TEXT,
	organization TEXT,
	participatingOrganization TEXT,
	network TEXT,
	"code" TEXT,
	specialty TEXT,
	"location" TEXT,
	healthcareService TEXT,
	telecom TEXT,
	"endpoint" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participatingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (network)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specialty)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (healthcareService)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("endpoint")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE parameters(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"parameter" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("parameter")
		REFERENCES parameters_Parameter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE parameters_Parameter(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	valueBase64Binary TEXT,
	_valueBase64Binary TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueCanonical TEXT,
	_valueCanonical TEXT,
	valueCode TEXT,
	_valueCode TEXT,
	valueDate TEXT,
	_valueDate TEXT,
	valueDateTime TEXT,
	_valueDateTime TEXT,
	valueDecimal INTEGER,
	_valueDecimal TEXT,
	valueId TEXT,
	_valueId TEXT,
	valueInstant TEXT,
	_valueInstant TEXT,
	valueInteger INTEGER,
	_valueInteger TEXT,
	valueMarkdown TEXT,
	_valueMarkdown TEXT,
	valueOid TEXT,
	_valueOid TEXT,
	valuePositiveInt INTEGER,
	_valuePositiveInt TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueTime TEXT,
	_valueTime TEXT,
	valueUnsignedInt INTEGER,
	_valueUnsignedInt TEXT,
	valueUri TEXT,
	_valueUri TEXT,
	valueUrl TEXT,
	_valueUrl TEXT,
	valueUuid TEXT,
	_valueUuid TEXT,
	valueAddress TEXT,
	valueAge TEXT,
	valueAnnotation TEXT,
	valueAttachment TEXT,
	valueCodeableConcept TEXT,
	valueCoding TEXT,
	valueContactPoint TEXT,
	valueCount TEXT,
	valueDistance TEXT,
	valueDuration TEXT,
	valueHumanName TEXT,
	valueIdentifier TEXT,
	valueMoney TEXT,
	valuePeriod TEXT,
	valueQuantity TEXT,
	valueRange TEXT,
	valueRatio TEXT,
	valueReference TEXT,
	valueSampledData TEXT,
	valueSignature TEXT,
	valueTiming TEXT,
	valueContactDetail TEXT,
	valueContributor TEXT,
	valueDataRequirement TEXT,
	valueExpression TEXT,
	valueParameterDefinition TEXT,
	valueRelatedArtifact TEXT,
	valueTriggerDefinition TEXT,
	valueUsageContext TEXT,
	valueDosage TEXT,
	valueMeta TEXT,
	resource TEXT,
	part TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCount)
		REFERENCES "count" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSignature)
		REFERENCES "signature" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (resource)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (part)
		REFERENCES parameters_Parameter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE patient(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	active BOOLEAN,
	_active TEXT,
	"name" TEXT,
	telecom TEXT,
	gender TEXT, --<code> enum: male/female/other/unknown
	_gender TEXT,
	birthDate DATE,
	_birthDate TEXT,
	deceasedBoolean BOOLEAN,
	_deceasedBoolean TEXT,
	deceasedDateTime TEXT,
	_deceasedDateTime TEXT,
	"address" TEXT,
	maritalStatus TEXT,
	multipleBirthBoolean BOOLEAN,
	_multipleBirthBoolean TEXT,
	multipleBirthInteger INTEGER,
	_multipleBirthInteger TEXT,
	photo TEXT,
	contact TEXT,
	communication TEXT,
	generalPractitioner TEXT,
	managingOrganization TEXT,
	link TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gender)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_birthDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deceasedBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deceasedDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("address")
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maritalStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_multipleBirthBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_multipleBirthInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (photo)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES patient_Contact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (communication)
		REFERENCES patient_Communication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (generalPractitioner)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (managingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (link)
		REFERENCES patient_Link (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE patient_Contact(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	relationship TEXT,
	"name" TEXT,
	telecom TEXT,
	"address" TEXT,
	gender TEXT, --<code> enum: male/female/other/unknown
	_gender TEXT,
	organization TEXT,
	"period" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("address")
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gender)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE patient_Communication(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"language" TEXT,
	preferred BOOLEAN,
	_preferred TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("language")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preferred)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE patient_Link(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	other TEXT,
	"type" TEXT, --<code> enum: replaced-by/replaces/refer/seealso
	_type TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (other)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE paymentNotice(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	request TEXT,
	response TEXT,
	created DATETIME,
	_created TEXT,
	"provider" TEXT,
	payment TEXT,
	paymentDate DATE,
	_paymentDate TEXT,
	payee TEXT,
	recipient TEXT,
	amount TEXT,
	paymentStatus TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (response)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payment)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paymentDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payee)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recipient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (paymentStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE paymentReconciliation(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT,
	_status TEXT,
	"period" TEXT,
	created DATETIME,
	_created TEXT,
	paymentIssuer TEXT,
	request TEXT,
	requestor TEXT,
	outcome TEXT, --<code> enum: queued/complete/error/partial
	_outcome TEXT,
	disposition TEXT,
	_disposition TEXT,
	paymentDate DATE,
	_paymentDate TEXT,
	paymentAmount TEXT,
	paymentIdentifier TEXT,
	detail TEXT,
	formCode TEXT,
	processNote TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (paymentIssuer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcome)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_disposition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paymentDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (paymentAmount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (paymentIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES paymentReconciliation_Detail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (formCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (processNote)
		REFERENCES paymentReconciliation_ProcessNote (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE paymentReconciliation_Detail(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	predecessor TEXT,
	"type" TEXT,
	request TEXT,
	submitter TEXT,
	response TEXT,
	"date" DATE,
	_date TEXT,
	responsible TEXT,
	payee TEXT,
	amount TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (predecessor)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (submitter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (response)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (responsible)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payee)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE paymentReconciliation_ProcessNote(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT, --<code> enum: display/print/printoper
	_type TEXT,
	"text" TEXT,
	_text TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE person(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"name" TEXT,
	telecom TEXT,
	gender TEXT, --<code> enum: male/female/other/unknown
	_gender TEXT,
	birthDate DATE,
	_birthDate TEXT,
	"address" TEXT,
	photo TEXT,
	managingOrganization TEXT,
	active BOOLEAN,
	_active TEXT,
	link TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gender)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_birthDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("address")
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (photo)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (managingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (link)
		REFERENCES person_Link (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE person_Link(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"target" TEXT,
	assurance TEXT, --<code> enum: level1/level2/level3/level4
	_assurance TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("target")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_assurance)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE planDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	subtitle TEXT,
	_subtitle TEXT,
	"type" TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	subjectCodeableConcept TEXT,
	subjectReference TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	"usage" TEXT,
	_usage TEXT,
	copyright TEXT,
	_copyright TEXT,
	approvalDate DATE,
	_approvalDate TEXT,
	lastReviewDate DATE,
	_lastReviewDate TEXT,
	effectivePeriod TEXT,
	topic TEXT,
	author TEXT,
	editor TEXT,
	reviewer TEXT,
	endorser TEXT,
	relatedArtifact TEXT,
	library TEXT,
	goal TEXT,
	"action" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (editor)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reviewer)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (endorser)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (goal)
		REFERENCES planDefinition_Goal (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("action")
		REFERENCES planDefinition_Action (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE planDefinition_Goal(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	category TEXT,
	"description" TEXT,
	"priority" TEXT,
	"start" TEXT,
	addresses TEXT,
	documentation TEXT,
	"target" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("description")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("priority")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("start")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (addresses)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (documentation)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("target")
		REFERENCES planDefinition_Target (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE planDefinition_Target(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	measure TEXT,
	detailQuantity TEXT,
	detailRange TEXT,
	detailCodeableConcept TEXT,
	due TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (measure)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (due)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE planDefinition_Action(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	prefix TEXT,
	_prefix TEXT,
	title TEXT,
	_title TEXT,
	"description" TEXT,
	_description TEXT,
	textEquivalent TEXT,
	_textEquivalent TEXT,
	"priority" TEXT,
	_priority TEXT,
	"code" TEXT,
	reason TEXT,
	documentation TEXT,
	goalId TEXT,
	_goalId TEXT,
	subjectCodeableConcept TEXT,
	subjectReference TEXT,
	"trigger" TEXT,
	"condition" TEXT,
	"input" TEXT,
	"output" TEXT,
	relatedAction TEXT,
	timingDateTime TEXT,
	_timingDateTime TEXT,
	timingAge TEXT,
	timingPeriod TEXT,
	timingDuration TEXT,
	timingRange TEXT,
	timingTiming TEXT,
	participant TEXT,
	"type" TEXT,
	groupingBehavior TEXT, --<code> enum: visual-group/logical-group/sentence-group
	_groupingBehavior TEXT,
	selectionBehavior TEXT, --<code> enum: any/all/all-or-none/exactly-one/at-most-one/one-or-more
	_selectionBehavior TEXT,
	requiredBehavior TEXT, --<code> enum: must/could/must-unless-documented
	_requiredBehavior TEXT,
	precheckBehavior TEXT, --<code> enum: yes/no
	_precheckBehavior TEXT,
	cardinalityBehavior TEXT, --<code> enum: single/multiple
	_cardinalityBehavior TEXT,
	definitionCanonical TEXT,
	_definitionCanonical TEXT,
	definitionUri TEXT,
	_definitionUri TEXT,
	transform TEXT,
	dynamicValue TEXT,
	"action" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_prefix)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_textEquivalent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (documentation)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_goalId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("trigger")
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("condition")
		REFERENCES planDefinition_Condition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("input")
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("output")
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedAction)
		REFERENCES planDefinition_RelatedAction (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participant)
		REFERENCES planDefinition_Participant (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_groupingBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_selectionBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requiredBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_precheckBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_cardinalityBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definitionCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definitionUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dynamicValue)
		REFERENCES planDefinition_DynamicValue (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("action")
		REFERENCES planDefinition_Action (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE planDefinition_Condition(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	kind TEXT, --<code> enum: applicability/start/stop
	_kind TEXT,
	expression TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE planDefinition_RelatedAction(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	actionId TEXT,
	_actionId TEXT,
	relationship TEXT, --<code> enum: before-start/before/before-end/concurrent-with-start/concurrent/concurrent-with-end/after-start/after/after-end
	_relationship TEXT,
	offsetDuration TEXT,
	offsetRange TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_actionId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_relationship)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (offsetDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (offsetRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE planDefinition_Participant(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT, --<code> enum: patient/practitioner/related-person/device
	_type TEXT,
	"role" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE planDefinition_DynamicValue(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"path" TEXT,
	_path TEXT,
	expression TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE practitioner(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	active BOOLEAN,
	_active TEXT,
	"name" TEXT,
	telecom TEXT,
	"address" TEXT,
	gender TEXT, --<code> enum: male/female/other/unknown
	_gender TEXT,
	birthDate DATE,
	_birthDate TEXT,
	photo TEXT,
	qualification TEXT,
	communication TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("address")
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gender)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_birthDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (photo)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (qualification)
		REFERENCES practitioner_Qualification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (communication)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE practitioner_Qualification(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"code" TEXT,
	"period" TEXT,
	issuer TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (issuer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE practitionerRole(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	active BOOLEAN,
	_active TEXT,
	"period" TEXT,
	practitioner TEXT,
	organization TEXT,
	"code" TEXT,
	specialty TEXT,
	"location" TEXT,
	healthcareService TEXT,
	telecom TEXT,
	availableTime TEXT,
	notAvailable TEXT,
	availabilityExceptions TEXT,
	_availabilityExceptions TEXT,
	"endpoint" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (practitioner)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specialty)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (healthcareService)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (availableTime)
		REFERENCES practitionerRole_AvailableTime (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (notAvailable)
		REFERENCES practitionerRole_NotAvailable (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availabilityExceptions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("endpoint")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE practitionerRole_AvailableTime(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	daysOfWeek TEXT,
	_daysOfWeek TEXT,
	allDay BOOLEAN,
	_allDay TEXT,
	availableStartTime TIME,
	_availableStartTime TEXT,
	availableEndTime TIME,
	_availableEndTime TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_daysOfWeek)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allDay)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availableStartTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availableEndTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE practitionerRole_NotAvailable(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	during TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (during)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE "procedure"(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	instantiatesCanonical TEXT,
	instantiatesUri TEXT,
	_instantiatesUri TEXT,
	basedOn TEXT,
	partOf TEXT,
	"status" TEXT,
	_status TEXT,
	statusReason TEXT,
	category TEXT,
	"code" TEXT,
	"subject" TEXT,
	encounter TEXT,
	performedDateTime TEXT,
	_performedDateTime TEXT,
	performedPeriod TEXT,
	performedString TEXT,
	_performedString TEXT,
	performedAge TEXT,
	performedRange TEXT,
	recorder TEXT,
	asserter TEXT,
	performer TEXT,
	"location" TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	bodySite TEXT,
	outcome TEXT,
	report TEXT,
	complication TEXT,
	complicationDetail TEXT,
	followUp TEXT,
	note TEXT,
	focalDevice TEXT,
	usedReference TEXT,
	usedCode TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_performedDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performedPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_performedString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performedAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performedRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recorder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (asserter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES procedure_Performer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (report)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (complication)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (complicationDetail)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (followUp)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (focalDevice)
		REFERENCES procedure_FocalDevice (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (usedReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (usedCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE procedure_Performer(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"function" TEXT,
	actor TEXT,
	onBehalfOf TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("function")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onBehalfOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE procedure_FocalDevice(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"action" TEXT,
	manipulated TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("action")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manipulated)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE provenance(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"target" TEXT,
	occurredPeriod TEXT,
	occurredDateTime TEXT,
	_occurredDateTime TEXT,
	recorded DATETIME,
	_recorded TEXT,
	"policy" TEXT,
	_policy TEXT,
	"location" TEXT,
	reason TEXT,
	activity TEXT,
	agent TEXT,
	entity TEXT,
	"signature" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("target")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurredPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurredDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recorded)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_policy)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (activity)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (agent)
		REFERENCES provenance_Agent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (entity)
		REFERENCES provenance_Entity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("signature")
		REFERENCES "signature" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE provenance_Agent(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	"role" TEXT,
	who TEXT,
	onBehalfOf TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (who)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onBehalfOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE provenance_Entity(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"role" TEXT, --<code> enum: derivation/revision/quotation/source/removal
	_role TEXT,
	what TEXT,
	agent TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_role)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (what)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (agent)
		REFERENCES provenance_Agent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE questionnaire(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	derivedFrom TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	subjectType TEXT,
	_subjectType TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	copyright TEXT,
	_copyright TEXT,
	approvalDate DATE,
	_approvalDate TEXT,
	lastReviewDate DATE,
	_lastReviewDate TEXT,
	effectivePeriod TEXT,
	"code" TEXT,
	item TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subjectType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES questionnaire_Item (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE questionnaire_Item(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	linkId TEXT,
	_linkId TEXT,
	"definition" TEXT,
	_definition TEXT,
	"code" TEXT,
	prefix TEXT,
	_prefix TEXT,
	"text" TEXT,
	_text TEXT,
	"type" TEXT, --<code> enum: group/display/boolean/decimal/integer/date/dateTime/time/string/text/url/choice/open-choice/attachment/reference/quantity
	_type TEXT,
	enableWhen TEXT,
	enableBehavior TEXT, --<code> enum: all/any
	_enableBehavior TEXT,
	required BOOLEAN,
	_required TEXT,
	repeats BOOLEAN,
	_repeats TEXT,
	readOnly BOOLEAN,
	_readOnly TEXT,
	"maxLength" INTEGER,
	_maxLength TEXT,
	answerValueSet TEXT,
	answerOption TEXT,
	initial TEXT,
	item TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_linkId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_prefix)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enableWhen)
		REFERENCES questionnaire_EnableWhen (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_enableBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_required)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_repeats)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_readOnly)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxLength)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (answerOption)
		REFERENCES questionnaire_AnswerOption (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (initial)
		REFERENCES questionnaire_Initial (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES questionnaire_Item (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE questionnaire_EnableWhen(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	question TEXT,
	_question TEXT,
	operator TEXT, --<code> enum: exists/=/!=/>/</>=/<=
	_operator TEXT,
	answerBoolean BOOLEAN,
	_answerBoolean TEXT,
	answerDecimal INTEGER,
	_answerDecimal TEXT,
	answerInteger INTEGER,
	_answerInteger TEXT,
	answerDate TEXT,
	_answerDate TEXT,
	answerDateTime TEXT,
	_answerDateTime TEXT,
	answerTime TEXT,
	_answerTime TEXT,
	answerString TEXT,
	_answerString TEXT,
	answerCoding TEXT,
	answerQuantity TEXT,
	answerReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_question)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_operator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (answerCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (answerQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (answerReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE questionnaire_AnswerOption(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	valueInteger INTEGER,
	_valueInteger TEXT,
	valueDate TEXT,
	_valueDate TEXT,
	valueTime TEXT,
	_valueTime TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueCoding TEXT,
	valueReference TEXT,
	initialSelected BOOLEAN,
	_initialSelected TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_initialSelected)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE questionnaire_Initial(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueDecimal INTEGER,
	_valueDecimal TEXT,
	valueInteger INTEGER,
	_valueInteger TEXT,
	valueDate TEXT,
	_valueDate TEXT,
	valueDateTime TEXT,
	_valueDateTime TEXT,
	valueTime TEXT,
	_valueTime TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueUri TEXT,
	_valueUri TEXT,
	valueAttachment TEXT,
	valueCoding TEXT,
	valueQuantity TEXT,
	valueReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE questionnaireResponse(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	basedOn TEXT,
	partOf TEXT,
	questionnaire TEXT,
	"status" TEXT, --<code> enum: in-progress/completed/amended/entered-in-error/stopped
	_status TEXT,
	"subject" TEXT,
	encounter TEXT,
	authored DATETIME,
	_authored TEXT,
	author TEXT,
	"source" TEXT,
	item TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authored)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES questionnaireResponse_Item (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE questionnaireResponse_Item(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	linkId TEXT,
	_linkId TEXT,
	"definition" TEXT,
	_definition TEXT,
	"text" TEXT,
	_text TEXT,
	answer TEXT,
	item TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_linkId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (answer)
		REFERENCES questionnaireResponse_Answer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES questionnaireResponse_Item (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE questionnaireResponse_Answer(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueDecimal INTEGER,
	_valueDecimal TEXT,
	valueInteger INTEGER,
	_valueInteger TEXT,
	valueDate TEXT,
	_valueDate TEXT,
	valueDateTime TEXT,
	_valueDateTime TEXT,
	valueTime TEXT,
	_valueTime TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueUri TEXT,
	_valueUri TEXT,
	valueAttachment TEXT,
	valueCoding TEXT,
	valueQuantity TEXT,
	valueReference TEXT,
	item TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES questionnaireResponse_Item (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE relatedPerson(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	active BOOLEAN,
	_active TEXT,
	patient TEXT,
	relationship TEXT,
	"name" TEXT,
	telecom TEXT,
	gender TEXT, --<code> enum: male/female/other/unknown
	_gender TEXT,
	birthDate DATE,
	_birthDate TEXT,
	"address" TEXT,
	photo TEXT,
	"period" TEXT,
	communication TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (telecom)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gender)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_birthDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("address")
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (photo)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (communication)
		REFERENCES relatedPerson_Communication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE relatedPerson_Communication(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"language" TEXT,
	preferred BOOLEAN,
	_preferred TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("language")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preferred)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE requestGroup(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	instantiatesCanonical TEXT,
	_instantiatesCanonical TEXT,
	instantiatesUri TEXT,
	_instantiatesUri TEXT,
	basedOn TEXT,
	replaces TEXT,
	groupIdentifier TEXT,
	"status" TEXT,
	_status TEXT,
	intent TEXT,
	_intent TEXT,
	"priority" TEXT,
	_priority TEXT,
	"code" TEXT,
	"subject" TEXT,
	encounter TEXT,
	authoredOn DATETIME,
	_authoredOn TEXT,
	author TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	note TEXT,
	"action" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (replaces)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (groupIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("action")
		REFERENCES requestGroup_Action (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE requestGroup_Action(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	prefix TEXT,
	_prefix TEXT,
	title TEXT,
	_title TEXT,
	"description" TEXT,
	_description TEXT,
	textEquivalent TEXT,
	_textEquivalent TEXT,
	"priority" TEXT,
	_priority TEXT,
	"code" TEXT,
	documentation TEXT,
	"condition" TEXT,
	relatedAction TEXT,
	timingDateTime TEXT,
	_timingDateTime TEXT,
	timingAge TEXT,
	timingPeriod TEXT,
	timingDuration TEXT,
	timingRange TEXT,
	timingTiming TEXT,
	participant TEXT,
	"type" TEXT,
	groupingBehavior TEXT,
	_groupingBehavior TEXT,
	selectionBehavior TEXT,
	_selectionBehavior TEXT,
	requiredBehavior TEXT,
	_requiredBehavior TEXT,
	precheckBehavior TEXT,
	_precheckBehavior TEXT,
	cardinalityBehavior TEXT,
	_cardinalityBehavior TEXT,
	resource TEXT,
	"action" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_prefix)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_textEquivalent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (documentation)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("condition")
		REFERENCES requestGroup_Condition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedAction)
		REFERENCES requestGroup_RelatedAction (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participant)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_groupingBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_selectionBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requiredBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_precheckBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_cardinalityBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (resource)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("action")
		REFERENCES requestGroup_Action (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE requestGroup_Condition(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	kind TEXT,
	_kind TEXT,
	expression TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE requestGroup_RelatedAction(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	actionId TEXT,
	_actionId TEXT,
	relationship TEXT,
	_relationship TEXT,
	offsetDuration TEXT,
	offsetRange TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_actionId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_relationship)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (offsetDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (offsetRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE researchDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	shortTitle TEXT,
	_shortTitle TEXT,
	subtitle TEXT,
	_subtitle TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	subjectCodeableConcept TEXT,
	subjectReference TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	comment TEXT,
	_comment TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	"usage" TEXT,
	_usage TEXT,
	copyright TEXT,
	_copyright TEXT,
	approvalDate DATE,
	_approvalDate TEXT,
	lastReviewDate DATE,
	_lastReviewDate TEXT,
	effectivePeriod TEXT,
	topic TEXT,
	author TEXT,
	editor TEXT,
	reviewer TEXT,
	endorser TEXT,
	relatedArtifact TEXT,
	library TEXT,
	"population" TEXT,
	exposure TEXT,
	exposureAlternative TEXT,
	outcome TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_shortTitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (editor)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reviewer)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (endorser)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("population")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposure)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposureAlternative)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE researchElementDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	shortTitle TEXT,
	_shortTitle TEXT,
	subtitle TEXT,
	_subtitle TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	subjectCodeableConcept TEXT,
	subjectReference TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	comment TEXT,
	_comment TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	"usage" TEXT,
	_usage TEXT,
	copyright TEXT,
	_copyright TEXT,
	approvalDate DATE,
	_approvalDate TEXT,
	lastReviewDate DATE,
	_lastReviewDate TEXT,
	effectivePeriod TEXT,
	topic TEXT,
	author TEXT,
	editor TEXT,
	reviewer TEXT,
	endorser TEXT,
	relatedArtifact TEXT,
	library TEXT,
	"type" TEXT, --<code> enum: population/exposure/outcome
	_type TEXT,
	variableType TEXT, --<code> enum: dichotomous/continuous/descriptive
	_variableType TEXT,
	characteristic TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_shortTitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (editor)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reviewer)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (endorser)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_variableType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (characteristic)
		REFERENCES researchElementDefinition_Characteristic (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE researchElementDefinition_Characteristic(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	definitionCodeableConcept TEXT,
	definitionCanonical TEXT,
	_definitionCanonical TEXT,
	definitionExpression TEXT,
	definitionDataRequirement TEXT,
	usageContext TEXT,
	exclude BOOLEAN,
	_exclude TEXT,
	unitOfMeasure TEXT,
	studyEffectiveDescription TEXT,
	_studyEffectiveDescription TEXT,
	studyEffectiveDateTime TEXT,
	_studyEffectiveDateTime TEXT,
	studyEffectivePeriod TEXT,
	studyEffectiveDuration TEXT,
	studyEffectiveTiming TEXT,
	studyEffectiveTimeFromStart TEXT,
	studyEffectiveGroupMeasure TEXT, --<code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median
	_studyEffectiveGroupMeasure TEXT,
	participantEffectiveDescription TEXT,
	_participantEffectiveDescription TEXT,
	participantEffectiveDateTime TEXT,
	_participantEffectiveDateTime TEXT,
	participantEffectivePeriod TEXT,
	participantEffectiveDuration TEXT,
	participantEffectiveTiming TEXT,
	participantEffectiveTimeFromStart TEXT,
	participantEffectiveGroupMeasure TEXT, --<code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median
	_participantEffectiveGroupMeasure TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definitionCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (usageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exclude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitOfMeasure)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_studyEffectiveDescription)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_studyEffectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (studyEffectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (studyEffectiveDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (studyEffectiveTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (studyEffectiveTimeFromStart)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_studyEffectiveGroupMeasure)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_participantEffectiveDescription)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_participantEffectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectiveDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectiveTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectiveTimeFromStart)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_participantEffectiveGroupMeasure)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE researchStudy(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	title TEXT,
	_title TEXT,
	protocol TEXT,
	partOf TEXT,
	"status" TEXT, --<code> enum: active/administratively-completed/approved/closed-to-accrual/closed-to-accrual-and-intervention/completed/disapproved/in-review/temporarily-closed-to-accrual/temporarily-closed-to-accrual-and-intervention/withdrawn
	_status TEXT,
	primaryPurposeType TEXT,
	phase TEXT,
	category TEXT,
	focus TEXT,
	"condition" TEXT,
	contact TEXT,
	relatedArtifact TEXT,
	keyword TEXT,
	"location" TEXT,
	"description" TEXT,
	_description TEXT,
	enrollment TEXT,
	"period" TEXT,
	sponsor TEXT,
	principalInvestigator TEXT,
	"site" TEXT,
	reasonStopped TEXT,
	note TEXT,
	arm TEXT,
	objective TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (protocol)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (primaryPurposeType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (phase)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (focus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("condition")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (keyword)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enrollment)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sponsor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (principalInvestigator)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("site")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonStopped)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (arm)
		REFERENCES researchStudy_Arm (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (objective)
		REFERENCES researchStudy_Objective (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE researchStudy_Arm(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"type" TEXT,
	"description" TEXT,
	_description TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE researchStudy_Objective(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"type" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE researchSubject(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: candidate/eligible/follow-up/ineligible/not-registered/off-study/on-study/on-study-intervention/on-study-observation/pending-on-study/potential-candidate/screening/withdrawn
	_status TEXT,
	"period" TEXT,
	study TEXT,
	individual TEXT,
	assignedArm TEXT,
	_assignedArm TEXT,
	actualArm TEXT,
	_actualArm TEXT,
	consent TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (study)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (individual)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_assignedArm)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_actualArm)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (consent)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE riskAssessment(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	basedOn TEXT,
	parent TEXT,
	"status" TEXT,
	_status TEXT,
	"method" TEXT,
	"code" TEXT,
	"subject" TEXT,
	encounter TEXT,
	occurrenceDateTime TEXT,
	_occurrenceDateTime TEXT,
	occurrencePeriod TEXT,
	"condition" TEXT,
	performer TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	basis TEXT,
	prediction TEXT,
	mitigation TEXT,
	_mitigation TEXT,
	note TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (parent)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("condition")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basis)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (prediction)
		REFERENCES riskAssessment_Prediction (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mitigation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE riskAssessment_Prediction(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	outcome TEXT,
	probabilityDecimal INTEGER,
	_probabilityDecimal TEXT,
	probabilityRange TEXT,
	qualitativeRisk TEXT,
	relativeRisk REAL,
	_relativeRisk TEXT,
	whenPeriod TEXT,
	whenRange TEXT,
	rationale TEXT,
	_rationale TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_probabilityDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (probabilityRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (qualitativeRisk)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_relativeRisk)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (whenPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (whenRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rationale)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE riskEvidenceSynthesis(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	note TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	copyright TEXT,
	_copyright TEXT,
	approvalDate DATE,
	_approvalDate TEXT,
	lastReviewDate DATE,
	_lastReviewDate TEXT,
	effectivePeriod TEXT,
	topic TEXT,
	author TEXT,
	editor TEXT,
	reviewer TEXT,
	endorser TEXT,
	relatedArtifact TEXT,
	synthesisType TEXT,
	studyType TEXT,
	"population" TEXT,
	exposure TEXT,
	outcome TEXT,
	sampleSize TEXT,
	riskEstimate TEXT,
	certainty TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (editor)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reviewer)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (endorser)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (synthesisType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (studyType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("population")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposure)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sampleSize)
		REFERENCES riskEvidenceSynthesis_SampleSize (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (riskEstimate)
		REFERENCES riskEvidenceSynthesis_RiskEstimate (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (certainty)
		REFERENCES riskEvidenceSynthesis_Certainty (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE riskEvidenceSynthesis_SampleSize(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	numberOfStudies INTEGER,
	_numberOfStudies TEXT,
	numberOfParticipants INTEGER,
	_numberOfParticipants TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfStudies)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfParticipants)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE riskEvidenceSynthesis_RiskEstimate(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	"type" TEXT,
	"value" REAL,
	_value TEXT,
	unitOfMeasure TEXT,
	denominatorCount INTEGER,
	_denominatorCount TEXT,
	numeratorCount INTEGER,
	_numeratorCount TEXT,
	precisionEstimate TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitOfMeasure)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_denominatorCount)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numeratorCount)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (precisionEstimate)
		REFERENCES riskEvidenceSynthesis_PrecisionEstimate (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE riskEvidenceSynthesis_PrecisionEstimate(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	"level" REAL,
	_level TEXT,
	"from" REAL,
	_from TEXT,
	"to" REAL,
	_to TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_level)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_from)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_to)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE riskEvidenceSynthesis_Certainty(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	rating TEXT,
	note TEXT,
	certaintySubcomponent TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rating)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (certaintySubcomponent)
		REFERENCES riskEvidenceSynthesis_CertaintySubcomponent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE riskEvidenceSynthesis_CertaintySubcomponent(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	rating TEXT,
	note TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rating)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE schedule(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	active BOOLEAN,
	_active TEXT,
	serviceCategory TEXT,
	serviceType TEXT,
	specialty TEXT,
	actor TEXT,
	planningHorizon TEXT,
	comment TEXT,
	_comment TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (serviceCategory)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (serviceType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specialty)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (planningHorizon)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE searchParameter(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	derivedFrom TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	"code" TEXT,
	_code TEXT,
	base TEXT,
	_base TEXT,
	"type" TEXT, --<code> enum: number/date/string/token/reference/composite/quantity/uri/special
	_type TEXT,
	expression TEXT,
	_expression TEXT,
	xpath TEXT,
	_xpath TEXT,
	xpathUsage TEXT, --<code> enum: normal/phonetic/nearby/distance/other
	_xpathUsage TEXT,
	"target" TEXT,
	_target TEXT,
	multipleOr BOOLEAN,
	_multipleOr TEXT,
	multipleAnd BOOLEAN,
	_multipleAnd TEXT,
	comparator TEXT, --<code> enum: eq/ne/gt/lt/ge/le/sa/eb/ap
	_comparator TEXT,
	modifier TEXT, --<code> enum: missing/exact/contains/not/text/in/not-in/below/above/type/identifier/ofType
	_modifier TEXT,
	"chain" TEXT,
	_chain TEXT,
	component TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_base)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_xpath)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_xpathUsage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_target)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_multipleOr)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_multipleAnd)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comparator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_modifier)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_chain)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (component)
		REFERENCES searchParameter_Component (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE searchParameter_Component(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"definition" TEXT,
	expression TEXT,
	_expression TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE serviceRequest(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	instantiatesCanonical TEXT,
	instantiatesUri TEXT,
	_instantiatesUri TEXT,
	basedOn TEXT,
	replaces TEXT,
	requisition TEXT,
	"status" TEXT,
	_status TEXT,
	intent TEXT,
	_intent TEXT,
	category TEXT,
	"priority" TEXT,
	_priority TEXT,
	doNotPerform BOOLEAN,
	_doNotPerform TEXT,
	"code" TEXT,
	orderDetail TEXT,
	quantityQuantity TEXT,
	quantityRatio TEXT,
	quantityRange TEXT,
	"subject" TEXT,
	encounter TEXT,
	occurrenceDateTime TEXT,
	_occurrenceDateTime TEXT,
	occurrencePeriod TEXT,
	occurrenceTiming TEXT,
	asNeededBoolean BOOLEAN,
	_asNeededBoolean TEXT,
	asNeededCodeableConcept TEXT,
	authoredOn DATETIME,
	_authoredOn TEXT,
	requester TEXT,
	performerType TEXT,
	performer TEXT,
	locationCode TEXT,
	locationReference TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	insurance TEXT,
	supportingInfo TEXT,
	specimen TEXT,
	bodySite TEXT,
	note TEXT,
	patientInstruction TEXT,
	_patientInstruction TEXT,
	relevantHistory TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (replaces)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requisition)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doNotPerform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (orderDetail)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantityQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantityRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantityRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrenceTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_asNeededBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (asNeededCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requester)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performerType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurance)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supportingInfo)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specimen)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patientInstruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relevantHistory)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE slot(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	serviceCategory TEXT,
	serviceType TEXT,
	specialty TEXT,
	appointmentType TEXT,
	schedule TEXT,
	"status" TEXT, --<code> enum: busy/free/busy-unavailable/busy-tentative/entered-in-error
	_status TEXT,
	"start" DATETIME,
	_start TEXT,
	"end" DATETIME,
	_end TEXT,
	overbooked BOOLEAN,
	_overbooked TEXT,
	comment TEXT,
	_comment TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (serviceCategory)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (serviceType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specialty)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (appointmentType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (schedule)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_overbooked)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE specimen(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	accessionIdentifier TEXT,
	"status" TEXT, --<code> enum: available/unavailable/unsatisfactory/entered-in-error
	_status TEXT,
	"type" TEXT,
	"subject" TEXT,
	receivedTime DATETIME,
	_receivedTime TEXT,
	parent TEXT,
	request TEXT,
	collection TEXT,
	processing TEXT,
	container TEXT,
	"condition" TEXT,
	note TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (accessionIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_receivedTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (parent)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (collection)
		REFERENCES specimen_Collection (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (processing)
		REFERENCES specimen_Processing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (container)
		REFERENCES specimen_Container (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("condition")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE specimen_Collection(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	collector TEXT,
	collectedDateTime TEXT,
	_collectedDateTime TEXT,
	collectedPeriod TEXT,
	duration TEXT,
	quantity TEXT,
	"method" TEXT,
	bodySite TEXT,
	fastingStatusCodeableConcept TEXT,
	fastingStatusDuration TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (collector)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_collectedDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (collectedPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (duration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fastingStatusCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fastingStatusDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE specimen_Processing(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	"procedure" TEXT,
	additive TEXT,
	timeDateTime TEXT,
	_timeDateTime TEXT,
	timePeriod TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("procedure")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additive)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timeDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE specimen_Container(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"description" TEXT,
	_description TEXT,
	"type" TEXT,
	capacity TEXT,
	specimenQuantity TEXT,
	additiveCodeableConcept TEXT,
	additiveReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (capacity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specimenQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additiveCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additiveReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE specimenDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	typeCollected TEXT,
	patientPreparation TEXT,
	timeAspect TEXT,
	_timeAspect TEXT,
	collection TEXT,
	typeTested TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (typeCollected)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patientPreparation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timeAspect)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (collection)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (typeTested)
		REFERENCES specimenDefinition_TypeTested (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE specimenDefinition_TypeTested(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	isDerived BOOLEAN,
	_isDerived TEXT,
	"type" TEXT,
	preference TEXT, --<code> enum: preferred/alternate
	_preference TEXT,
	container TEXT,
	requirement TEXT,
	_requirement TEXT,
	retentionTime TEXT,
	rejectionCriterion TEXT,
	handling TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isDerived)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preference)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (container)
		REFERENCES specimenDefinition_Container (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requirement)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (retentionTime)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rejectionCriterion)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (handling)
		REFERENCES specimenDefinition_Handling (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE specimenDefinition_Container(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	material TEXT,
	"type" TEXT,
	cap TEXT,
	"description" TEXT,
	_description TEXT,
	capacity TEXT,
	minimumVolumeQuantity TEXT,
	minimumVolumeString TEXT,
	_minimumVolumeString TEXT,
	additive TEXT,
	preparation TEXT,
	_preparation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (material)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (cap)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (capacity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (minimumVolumeQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minimumVolumeString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additive)
		REFERENCES specimenDefinition_Additive (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preparation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE specimenDefinition_Additive(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	additiveCodeableConcept TEXT,
	additiveReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additiveCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additiveReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE specimenDefinition_Handling(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	temperatureQualifier TEXT,
	temperatureRange TEXT,
	maxDuration TEXT,
	instruction TEXT,
	_instruction TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (temperatureQualifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (temperatureRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureDefinition(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	copyright TEXT,
	_copyright TEXT,
	keyword TEXT,
	fhirVersion TEXT, --<code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1
	_fhirVersion TEXT,
	mapping TEXT,
	kind TEXT, --<code> enum: primitive-type/complex-type/resource/logical
	_kind TEXT,
	abstract BOOLEAN,
	_abstract TEXT,
	context TEXT,
	contextInvariant TEXT,
	_contextInvariant TEXT,
	"type" TEXT,
	_type TEXT,
	baseDefinition TEXT,
	derivation TEXT, --<code> enum: specialization/constraint
	_derivation TEXT,
	snapshot TEXT,
	differential TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (keyword)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fhirVersion)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (mapping)
		REFERENCES structureDefinition_Mapping (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_abstract)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES structureDefinition_Context (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contextInvariant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_derivation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (snapshot)
		REFERENCES structureDefinition_Snapshot (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (differential)
		REFERENCES structureDefinition_Differential (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureDefinition_Mapping(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"identity" TEXT,
	_identity TEXT,
	uri TEXT,
	_uri TEXT,
	"name" TEXT,
	_name TEXT,
	comment TEXT,
	_comment TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_identity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_uri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureDefinition_Context(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT, --<code> enum: fhirpath/element/extension
	_type TEXT,
	expression TEXT,
	_expression TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureDefinition_Snapshot(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	element TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (element)
		REFERENCES elementDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureDefinition_Differential(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	element TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (element)
		REFERENCES elementDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureMap(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	copyright TEXT,
	_copyright TEXT,
	"structure" TEXT,
	import TEXT,
	"group" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("structure")
		REFERENCES structureMap_Structure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("group")
		REFERENCES structureMap_Group (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureMap_Structure(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	mode TEXT, --<code> enum: source/queried/target/produced
	_mode TEXT,
	alias TEXT,
	_alias TEXT,
	documentation TEXT,
	_documentation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_alias)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureMap_Group(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	extends TEXT,
	_extends TEXT,
	typeMode TEXT, --<code> enum: none/types/type-and-types
	_typeMode TEXT,
	documentation TEXT,
	_documentation TEXT,
	"input" TEXT,
	"rule" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_extends)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_typeMode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("input")
		REFERENCES structureMap_Input (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("rule")
		REFERENCES structureMap_Rule (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureMap_Input(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"type" TEXT,
	_type TEXT,
	mode TEXT, --<code> enum: source/target
	_mode TEXT,
	documentation TEXT,
	_documentation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureMap_Rule(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"source" TEXT,
	"target" TEXT,
	"rule" TEXT,
	dependent TEXT,
	documentation TEXT,
	_documentation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES structureMap_Source (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("target")
		REFERENCES structureMap_Target (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("rule")
		REFERENCES structureMap_Rule (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dependent)
		REFERENCES structureMap_Dependent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureMap_Source(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	context TEXT,
	_context TEXT,
	"min" INTEGER,
	_min TEXT,
	"max" TEXT,
	_max TEXT,
	"type" TEXT,
	_type TEXT,
	defaultValueBase64Binary TEXT,
	_defaultValueBase64Binary TEXT,
	defaultValueBoolean BOOLEAN,
	_defaultValueBoolean TEXT,
	defaultValueCanonical TEXT,
	_defaultValueCanonical TEXT,
	defaultValueCode TEXT,
	_defaultValueCode TEXT,
	defaultValueDate TEXT,
	_defaultValueDate TEXT,
	defaultValueDateTime TEXT,
	_defaultValueDateTime TEXT,
	defaultValueDecimal INTEGER,
	_defaultValueDecimal TEXT,
	defaultValueId TEXT,
	_defaultValueId TEXT,
	defaultValueInstant TEXT,
	_defaultValueInstant TEXT,
	defaultValueInteger INTEGER,
	_defaultValueInteger TEXT,
	defaultValueMarkdown TEXT,
	_defaultValueMarkdown TEXT,
	defaultValueOid TEXT,
	_defaultValueOid TEXT,
	defaultValuePositiveInt INTEGER,
	_defaultValuePositiveInt TEXT,
	defaultValueString TEXT,
	_defaultValueString TEXT,
	defaultValueTime TEXT,
	_defaultValueTime TEXT,
	defaultValueUnsignedInt INTEGER,
	_defaultValueUnsignedInt TEXT,
	defaultValueUri TEXT,
	_defaultValueUri TEXT,
	defaultValueUrl TEXT,
	_defaultValueUrl TEXT,
	defaultValueUuid TEXT,
	_defaultValueUuid TEXT,
	defaultValueAddress TEXT,
	defaultValueAge TEXT,
	defaultValueAnnotation TEXT,
	defaultValueAttachment TEXT,
	defaultValueCodeableConcept TEXT,
	defaultValueCoding TEXT,
	defaultValueContactPoint TEXT,
	defaultValueCount TEXT,
	defaultValueDistance TEXT,
	defaultValueDuration TEXT,
	defaultValueHumanName TEXT,
	defaultValueIdentifier TEXT,
	defaultValueMoney TEXT,
	defaultValuePeriod TEXT,
	defaultValueQuantity TEXT,
	defaultValueRange TEXT,
	defaultValueRatio TEXT,
	defaultValueReference TEXT,
	defaultValueSampledData TEXT,
	defaultValueSignature TEXT,
	defaultValueTiming TEXT,
	defaultValueContactDetail TEXT,
	defaultValueContributor TEXT,
	defaultValueDataRequirement TEXT,
	defaultValueExpression TEXT,
	defaultValueParameterDefinition TEXT,
	defaultValueRelatedArtifact TEXT,
	defaultValueTriggerDefinition TEXT,
	defaultValueUsageContext TEXT,
	defaultValueDosage TEXT,
	defaultValueMeta TEXT,
	element TEXT,
	_element TEXT,
	listMode TEXT, --<code> enum: first/not_first/last/not_last/only_one
	_listMode TEXT,
	variable TEXT,
	_variable TEXT,
	"condition" TEXT,
	_condition TEXT,
	"check" TEXT,
	_check TEXT,
	logMessage TEXT,
	_logMessage TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_context)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueCount)
		REFERENCES "count" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValuePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueSignature)
		REFERENCES "signature" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_element)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_listMode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_variable)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_condition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_check)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_logMessage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureMap_Target(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	context TEXT,
	_context TEXT,
	contextType TEXT, --<code> enum: type/variable
	_contextType TEXT,
	element TEXT,
	_element TEXT,
	variable TEXT,
	_variable TEXT,
	listMode TEXT, --<code> enum: first/share/last/collate
	_listMode TEXT,
	listRuleId TEXT,
	_listRuleId TEXT,
	transform TEXT, --<code> enum: create/copy/truncate/escape/cast/append/translate/reference/dateOp/uuid/pointer/evaluate/cc/c/qty/id/cp
	_transform TEXT,
	"parameter" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_context)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contextType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_element)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_variable)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_listMode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_listRuleId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_transform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("parameter")
		REFERENCES structureMap_Parameter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureMap_Parameter(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	valueId TEXT,
	_valueId TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueInteger INTEGER,
	_valueInteger TEXT,
	valueDecimal INTEGER,
	_valueDecimal TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE structureMap_Dependent(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	variable TEXT,
	_variable TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_variable)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE subscription(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"status" TEXT, --<code> enum: requested/active/error/off
	_status TEXT,
	contact TEXT,
	"end" DATETIME,
	_end TEXT,
	reason TEXT,
	_reason TEXT,
	criteria TEXT,
	_criteria TEXT,
	error TEXT,
	_error TEXT,
	channel TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reason)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_criteria)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_error)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (channel)
		REFERENCES subscription_Channel (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE subscription_Channel(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT, --<code> enum: rest-hook/websocket/email/sms/message
	_type TEXT,
	"endpoint" TEXT,
	_endpoint TEXT,
	payload TEXT,
	_payload TEXT,
	header TEXT,
	_header TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_endpoint)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_payload)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_header)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substance(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: active/inactive/entered-in-error
	_status TEXT,
	category TEXT,
	"code" TEXT,
	"description" TEXT,
	_description TEXT,
	"instance" TEXT,
	ingredient TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("instance")
		REFERENCES substance_Instance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ingredient)
		REFERENCES substance_Ingredient (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substance_Instance(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	expiry DATETIME,
	_expiry TEXT,
	quantity TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expiry)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substance_Ingredient(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	quantity TEXT,
	substanceCodeableConcept TEXT,
	substanceReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substanceCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substanceReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceNucleicAcid(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	sequenceType TEXT,
	numberOfSubunits INTEGER,
	_numberOfSubunits TEXT,
	areaOfHybridisation TEXT,
	_areaOfHybridisation TEXT,
	oligoNucleotideType TEXT,
	subunit TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sequenceType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfSubunits)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_areaOfHybridisation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (oligoNucleotideType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subunit)
		REFERENCES substanceNucleicAcid_Subunit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceNucleicAcid_Subunit(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	subunit INTEGER,
	_subunit TEXT,
	"sequence" TEXT,
	_sequence TEXT,
	"length" INTEGER,
	_length TEXT,
	sequenceAttachment TEXT,
	fivePrime TEXT,
	threePrime TEXT,
	linkage TEXT,
	sugar TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subunit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_length)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sequenceAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fivePrime)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (threePrime)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (linkage)
		REFERENCES substanceNucleicAcid_Linkage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sugar)
		REFERENCES substanceNucleicAcid_Sugar (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceNucleicAcid_Linkage(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	connectivity TEXT,
	_connectivity TEXT,
	identifier TEXT,
	"name" TEXT,
	_name TEXT,
	residueSite TEXT,
	_residueSite TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_connectivity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_residueSite)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceNucleicAcid_Sugar(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"name" TEXT,
	_name TEXT,
	residueSite TEXT,
	_residueSite TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_residueSite)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substancePolymer(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	class TEXT,
	geometry TEXT,
	copolymerConnectivity TEXT,
	modification TEXT,
	_modification TEXT,
	monomerSet TEXT,
	repeat TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (class)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (geometry)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (copolymerConnectivity)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_modification)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (monomerSet)
		REFERENCES substancePolymer_MonomerSet (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (repeat)
		REFERENCES substancePolymer_Repeat (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substancePolymer_MonomerSet(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	ratioType TEXT,
	startingMaterial TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ratioType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (startingMaterial)
		REFERENCES substancePolymer_StartingMaterial (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substancePolymer_StartingMaterial(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	material TEXT,
	"type" TEXT,
	isDefining BOOLEAN,
	_isDefining TEXT,
	amount TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (material)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isDefining)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES substanceAmount (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substancePolymer_Repeat(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	numberOfUnits INTEGER,
	_numberOfUnits TEXT,
	averageMolecularFormula TEXT,
	_averageMolecularFormula TEXT,
	repeatUnitAmountType TEXT,
	repeatUnit TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfUnits)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_averageMolecularFormula)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (repeatUnitAmountType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (repeatUnit)
		REFERENCES substancePolymer_RepeatUnit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substancePolymer_RepeatUnit(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	orientationOfPolymerisation TEXT,
	repeatUnit TEXT,
	_repeatUnit TEXT,
	amount TEXT,
	degreeOfPolymerisation TEXT,
	structuralRepresentation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (orientationOfPolymerisation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_repeatUnit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES substanceAmount (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (degreeOfPolymerisation)
		REFERENCES substancePolymer_DegreeOfPolymerisation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (structuralRepresentation)
		REFERENCES substancePolymer_StructuralRepresentation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substancePolymer_DegreeOfPolymerisation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	degree TEXT,
	amount TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (degree)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES substanceAmount (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substancePolymer_StructuralRepresentation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	representation TEXT,
	_representation TEXT,
	attachment TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_representation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (attachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceProtein(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	sequenceType TEXT,
	numberOfSubunits INTEGER,
	_numberOfSubunits TEXT,
	disulfideLinkage TEXT,
	_disulfideLinkage TEXT,
	subunit TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sequenceType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfSubunits)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_disulfideLinkage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subunit)
		REFERENCES substanceProtein_Subunit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceProtein_Subunit(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	subunit INTEGER,
	_subunit TEXT,
	"sequence" TEXT,
	_sequence TEXT,
	"length" INTEGER,
	_length TEXT,
	sequenceAttachment TEXT,
	nTerminalModificationId TEXT,
	nTerminalModification TEXT,
	_nTerminalModification TEXT,
	cTerminalModificationId TEXT,
	cTerminalModification TEXT,
	_cTerminalModification TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subunit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_length)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sequenceAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (nTerminalModificationId)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_nTerminalModification)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (cTerminalModificationId)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_cTerminalModification)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceReferenceInformation(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	comment TEXT,
	_comment TEXT,
	gene TEXT,
	geneElement TEXT,
	classification TEXT,
	"target" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (gene)
		REFERENCES substanceReferenceInformation_Gene (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (geneElement)
		REFERENCES substanceReferenceInformation_GeneElement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (classification)
		REFERENCES substanceReferenceInformation_Classification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("target")
		REFERENCES substanceReferenceInformation_Target (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceReferenceInformation_Gene(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	geneSequenceOrigin TEXT,
	gene TEXT,
	"source" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (geneSequenceOrigin)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (gene)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceReferenceInformation_GeneElement(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	element TEXT,
	"source" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (element)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceReferenceInformation_Classification(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"domain" TEXT,
	classification TEXT,
	subtype TEXT,
	"source" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("domain")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (classification)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subtype)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceReferenceInformation_Target(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"target" TEXT,
	"type" TEXT,
	interaction TEXT,
	organism TEXT,
	organismType TEXT,
	amountQuantity TEXT,
	amountRange TEXT,
	amountString TEXT,
	_amountString TEXT,
	amountType TEXT,
	"source" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("target")
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (interaction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organism)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organismType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_amountString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSourceMaterial(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	sourceMaterialClass TEXT,
	sourceMaterialType TEXT,
	sourceMaterialState TEXT,
	organismId TEXT,
	organismName TEXT,
	_organismName TEXT,
	parentSubstanceId TEXT,
	parentSubstanceName TEXT,
	_parentSubstanceName TEXT,
	countryOfOrigin TEXT,
	geographicalLocation TEXT,
	_geographicalLocation TEXT,
	developmentStage TEXT,
	fractionDescription TEXT,
	organism TEXT,
	partDescription TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceMaterialClass)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceMaterialType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceMaterialState)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organismId)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_organismName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (parentSubstanceId)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_parentSubstanceName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (countryOfOrigin)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_geographicalLocation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (developmentStage)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fractionDescription)
		REFERENCES substanceSourceMaterial_FractionDescription (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organism)
		REFERENCES substanceSourceMaterial_Organism (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partDescription)
		REFERENCES substanceSourceMaterial_PartDescription (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSourceMaterial_FractionDescription(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	fraction TEXT,
	_fraction TEXT,
	materialType TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fraction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (materialType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSourceMaterial_Organism(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	family TEXT,
	genus TEXT,
	species TEXT,
	intraspecificType TEXT,
	intraspecificDescription TEXT,
	_intraspecificDescription TEXT,
	author TEXT,
	hybrid TEXT,
	organismGeneral TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (family)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (genus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (species)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (intraspecificType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intraspecificDescription)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES substanceSourceMaterial_Author (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (hybrid)
		REFERENCES substanceSourceMaterial_Hybrid (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organismGeneral)
		REFERENCES substanceSourceMaterial_OrganismGeneral (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSourceMaterial_Author(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	authorType TEXT,
	authorDescription TEXT,
	_authorDescription TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authorType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authorDescription)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSourceMaterial_Hybrid(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	maternalOrganismId TEXT,
	_maternalOrganismId TEXT,
	maternalOrganismName TEXT,
	_maternalOrganismName TEXT,
	paternalOrganismId TEXT,
	_paternalOrganismId TEXT,
	paternalOrganismName TEXT,
	_paternalOrganismName TEXT,
	hybridType TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maternalOrganismId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maternalOrganismName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paternalOrganismId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paternalOrganismName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (hybridType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSourceMaterial_OrganismGeneral(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	kingdom TEXT,
	phylum TEXT,
	class TEXT,
	"order" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (kingdom)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (phylum)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (class)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("order")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSourceMaterial_PartDescription(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	part TEXT,
	partLocation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (part)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partLocation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSpecification(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"type" TEXT,
	"status" TEXT,
	"domain" TEXT,
	"description" TEXT,
	_description TEXT,
	"source" TEXT,
	comment TEXT,
	_comment TEXT,
	moiety TEXT,
	property TEXT,
	referenceInformation TEXT,
	"structure" TEXT,
	"code" TEXT,
	"name" TEXT,
	molecularWeight TEXT,
	relationship TEXT,
	nucleicAcid TEXT,
	polymer TEXT,
	protein TEXT,
	sourceMaterial TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("domain")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (moiety)
		REFERENCES substanceSpecification_Moiety (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (property)
		REFERENCES substanceSpecification_Property (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceInformation)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("structure")
		REFERENCES substanceSpecification_Structure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES substanceSpecification_Code (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES substanceSpecification_Name (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (molecularWeight)
		REFERENCES substanceSpecification_MolecularWeight (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES substanceSpecification_Relationship (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (nucleicAcid)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (polymer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (protein)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceMaterial)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSpecification_Moiety(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"role" TEXT,
	identifier TEXT,
	"name" TEXT,
	_name TEXT,
	stereochemistry TEXT,
	opticalActivity TEXT,
	molecularFormula TEXT,
	_molecularFormula TEXT,
	amountQuantity TEXT,
	amountString TEXT,
	_amountString TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (stereochemistry)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (opticalActivity)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_molecularFormula)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_amountString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSpecification_Property(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	category TEXT,
	"code" TEXT,
	parameters TEXT,
	_parameters TEXT,
	definingSubstanceReference TEXT,
	definingSubstanceCodeableConcept TEXT,
	amountQuantity TEXT,
	amountString TEXT,
	_amountString TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_parameters)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definingSubstanceReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definingSubstanceCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_amountString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSpecification_Structure(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	stereochemistry TEXT,
	opticalActivity TEXT,
	molecularFormula TEXT,
	_molecularFormula TEXT,
	molecularFormulaByMoiety TEXT,
	_molecularFormulaByMoiety TEXT,
	isotope TEXT,
	molecularWeight TEXT,
	"source" TEXT,
	representation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (stereochemistry)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (opticalActivity)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_molecularFormula)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_molecularFormulaByMoiety)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (isotope)
		REFERENCES substanceSpecification_Isotope (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (molecularWeight)
		REFERENCES substanceSpecification_MolecularWeight (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (representation)
		REFERENCES substanceSpecification_Representation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSpecification_Isotope(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"name" TEXT,
	substitution TEXT,
	halfLife TEXT,
	molecularWeight TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substitution)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (halfLife)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (molecularWeight)
		REFERENCES substanceSpecification_MolecularWeight (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSpecification_MolecularWeight(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"method" TEXT,
	"type" TEXT,
	amount TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSpecification_Representation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	representation TEXT,
	_representation TEXT,
	attachment TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_representation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (attachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSpecification_Code(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	"status" TEXT,
	statusDate DATETIME,
	_statusDate TEXT,
	comment TEXT,
	_comment TEXT,
	"source" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_statusDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSpecification_Name(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"type" TEXT,
	"status" TEXT,
	preferred BOOLEAN,
	_preferred TEXT,
	"language" TEXT,
	"domain" TEXT,
	jurisdiction TEXT,
	synonym TEXT,
	"translation" TEXT,
	official TEXT,
	"source" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preferred)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("language")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("domain")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (synonym)
		REFERENCES substanceSpecification_Name (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("translation")
		REFERENCES substanceSpecification_Name (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (official)
		REFERENCES substanceSpecification_Official (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSpecification_Official(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	authority TEXT,
	"status" TEXT,
	"date" DATETIME,
	_date TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authority)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE substanceSpecification_Relationship(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	substanceReference TEXT,
	substanceCodeableConcept TEXT,
	relationship TEXT,
	isDefining BOOLEAN,
	_isDefining TEXT,
	amountQuantity TEXT,
	amountRange TEXT,
	amountRatio TEXT,
	amountString TEXT,
	_amountString TEXT,
	amountRatioLowLimit TEXT,
	amountType TEXT,
	"source" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substanceReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substanceCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isDefining)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_amountString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountRatioLowLimit)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE supplyDelivery(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	basedOn TEXT,
	partOf TEXT,
	"status" TEXT, --<code> enum: in-progress/completed/abandoned/entered-in-error
	_status TEXT,
	patient TEXT,
	"type" TEXT,
	suppliedItem TEXT,
	occurrenceDateTime TEXT,
	_occurrenceDateTime TEXT,
	occurrencePeriod TEXT,
	occurrenceTiming TEXT,
	supplier TEXT,
	destination TEXT,
	receiver TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (suppliedItem)
		REFERENCES supplyDelivery_SuppliedItem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrenceTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supplier)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (destination)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (receiver)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE supplyDelivery_SuppliedItem(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	quantity TEXT,
	itemCodeableConcept TEXT,
	itemReference TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE supplyRequest(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"status" TEXT, --<code> enum: draft/active/suspended/cancelled/completed/entered-in-error/unknown
	_status TEXT,
	category TEXT,
	"priority" TEXT,
	_priority TEXT,
	itemCodeableConcept TEXT,
	itemReference TEXT,
	quantity TEXT,
	"parameter" TEXT,
	occurrenceDateTime TEXT,
	_occurrenceDateTime TEXT,
	occurrencePeriod TEXT,
	occurrenceTiming TEXT,
	authoredOn DATETIME,
	_authoredOn TEXT,
	requester TEXT,
	supplier TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	deliverFrom TEXT,
	deliverTo TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("parameter")
		REFERENCES supplyRequest_Parameter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrenceTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requester)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supplier)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (deliverFrom)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (deliverTo)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE supplyRequest_Parameter(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	valueCodeableConcept TEXT,
	valueQuantity TEXT,
	valueRange TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE task(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	instantiatesCanonical TEXT,
	instantiatesUri TEXT,
	_instantiatesUri TEXT,
	basedOn TEXT,
	groupIdentifier TEXT,
	partOf TEXT,
	"status" TEXT, --<code> enum: draft/requested/received/accepted/rejected/ready/cancelled/in-progress/on-hold/failed/completed/entered-in-error
	_status TEXT,
	statusReason TEXT,
	businessStatus TEXT,
	intent TEXT, --<code> enum: unknown/proposal/plan/order/original-order/reflex-order/filler-order/instance-order/option
	_intent TEXT,
	"priority" TEXT,
	_priority TEXT,
	"code" TEXT,
	"description" TEXT,
	_description TEXT,
	focus TEXT,
	"for" TEXT,
	encounter TEXT,
	executionPeriod TEXT,
	authoredOn DATETIME,
	_authoredOn TEXT,
	lastModified DATETIME,
	_lastModified TEXT,
	requester TEXT,
	performerType TEXT,
	"owner" TEXT,
	"location" TEXT,
	reasonCode TEXT,
	reasonReference TEXT,
	insurance TEXT,
	note TEXT,
	relevantHistory TEXT,
	restriction TEXT,
	"input" TEXT,
	"output" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (groupIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (businessStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (focus)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("for")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (executionPeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastModified)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requester)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performerType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("owner")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurance)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (note)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relevantHistory)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (restriction)
		REFERENCES task_Restriction (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("input")
		REFERENCES task_Input (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("output")
		REFERENCES task_Output (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE task_Restriction(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	repetitions INTEGER,
	_repetitions TEXT,
	"period" TEXT,
	recipient TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_repetitions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recipient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE task_Input(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	valueBase64Binary TEXT,
	_valueBase64Binary TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueCanonical TEXT,
	_valueCanonical TEXT,
	valueCode TEXT,
	_valueCode TEXT,
	valueDate TEXT,
	_valueDate TEXT,
	valueDateTime TEXT,
	_valueDateTime TEXT,
	valueDecimal INTEGER,
	_valueDecimal TEXT,
	valueId TEXT,
	_valueId TEXT,
	valueInstant TEXT,
	_valueInstant TEXT,
	valueInteger INTEGER,
	_valueInteger TEXT,
	valueMarkdown TEXT,
	_valueMarkdown TEXT,
	valueOid TEXT,
	_valueOid TEXT,
	valuePositiveInt INTEGER,
	_valuePositiveInt TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueTime TEXT,
	_valueTime TEXT,
	valueUnsignedInt INTEGER,
	_valueUnsignedInt TEXT,
	valueUri TEXT,
	_valueUri TEXT,
	valueUrl TEXT,
	_valueUrl TEXT,
	valueUuid TEXT,
	_valueUuid TEXT,
	valueAddress TEXT,
	valueAge TEXT,
	valueAnnotation TEXT,
	valueAttachment TEXT,
	valueCodeableConcept TEXT,
	valueCoding TEXT,
	valueContactPoint TEXT,
	valueCount TEXT,
	valueDistance TEXT,
	valueDuration TEXT,
	valueHumanName TEXT,
	valueIdentifier TEXT,
	valueMoney TEXT,
	valuePeriod TEXT,
	valueQuantity TEXT,
	valueRange TEXT,
	valueRatio TEXT,
	valueReference TEXT,
	valueSampledData TEXT,
	valueSignature TEXT,
	valueTiming TEXT,
	valueContactDetail TEXT,
	valueContributor TEXT,
	valueDataRequirement TEXT,
	valueExpression TEXT,
	valueParameterDefinition TEXT,
	valueRelatedArtifact TEXT,
	valueTriggerDefinition TEXT,
	valueUsageContext TEXT,
	valueDosage TEXT,
	valueMeta TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCount)
		REFERENCES "count" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSignature)
		REFERENCES "signature" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE task_Output(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	valueBase64Binary TEXT,
	_valueBase64Binary TEXT,
	valueBoolean BOOLEAN,
	_valueBoolean TEXT,
	valueCanonical TEXT,
	_valueCanonical TEXT,
	valueCode TEXT,
	_valueCode TEXT,
	valueDate TEXT,
	_valueDate TEXT,
	valueDateTime TEXT,
	_valueDateTime TEXT,
	valueDecimal INTEGER,
	_valueDecimal TEXT,
	valueId TEXT,
	_valueId TEXT,
	valueInstant TEXT,
	_valueInstant TEXT,
	valueInteger INTEGER,
	_valueInteger TEXT,
	valueMarkdown TEXT,
	_valueMarkdown TEXT,
	valueOid TEXT,
	_valueOid TEXT,
	valuePositiveInt INTEGER,
	_valuePositiveInt TEXT,
	valueString TEXT,
	_valueString TEXT,
	valueTime TEXT,
	_valueTime TEXT,
	valueUnsignedInt INTEGER,
	_valueUnsignedInt TEXT,
	valueUri TEXT,
	_valueUri TEXT,
	valueUrl TEXT,
	_valueUrl TEXT,
	valueUuid TEXT,
	_valueUuid TEXT,
	valueAddress TEXT,
	valueAge TEXT,
	valueAnnotation TEXT,
	valueAttachment TEXT,
	valueCodeableConcept TEXT,
	valueCoding TEXT,
	valueContactPoint TEXT,
	valueCount TEXT,
	valueDistance TEXT,
	valueDuration TEXT,
	valueHumanName TEXT,
	valueIdentifier TEXT,
	valueMoney TEXT,
	valuePeriod TEXT,
	valueQuantity TEXT,
	valueRange TEXT,
	valueRatio TEXT,
	valueReference TEXT,
	valueSampledData TEXT,
	valueSignature TEXT,
	valueTiming TEXT,
	valueContactDetail TEXT,
	valueContributor TEXT,
	valueDataRequirement TEXT,
	valueExpression TEXT,
	valueParameterDefinition TEXT,
	valueRelatedArtifact TEXT,
	valueTriggerDefinition TEXT,
	valueUsageContext TEXT,
	valueDosage TEXT,
	valueMeta TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAddress)
		REFERENCES "address" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCount)
		REFERENCES "count" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES "period" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES "range" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSignature)
		REFERENCES "signature" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE terminologyCapabilities(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	copyright TEXT,
	_copyright TEXT,
	kind TEXT,
	_kind TEXT,
	software TEXT,
	"implementation" TEXT,
	lockedDate BOOLEAN,
	_lockedDate TEXT,
	codeSystem TEXT,
	expansion TEXT,
	codeSearch TEXT, --<code> enum: explicit/all
	_codeSearch TEXT,
	validateCode TEXT,
	"translation" TEXT,
	closure TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (software)
		REFERENCES terminologyCapabilities_Software (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("implementation")
		REFERENCES terminologyCapabilities_Implementation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lockedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (codeSystem)
		REFERENCES terminologyCapabilities_CodeSystem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expansion)
		REFERENCES terminologyCapabilities_Expansion (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_codeSearch)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validateCode)
		REFERENCES terminologyCapabilities_ValidateCode (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("translation")
		REFERENCES terminologyCapabilities_Translation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (closure)
		REFERENCES terminologyCapabilities_Closure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE terminologyCapabilities_Software(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"version" TEXT,
	_version TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE terminologyCapabilities_Implementation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"description" TEXT,
	_description TEXT,
	"url" TEXT,
	_url TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE terminologyCapabilities_CodeSystem(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	uri TEXT,
	"version" TEXT,
	subsumption BOOLEAN,
	_subsumption TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("version")
		REFERENCES terminologyCapabilities_Version (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subsumption)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE terminologyCapabilities_Version(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	_code TEXT,
	isDefault BOOLEAN,
	_isDefault TEXT,
	compositional BOOLEAN,
	_compositional TEXT,
	"language" TEXT,
	_language TEXT,
	"filter" TEXT,
	property TEXT,
	_property TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isDefault)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_compositional)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("filter")
		REFERENCES terminologyCapabilities_Filter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_property)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE terminologyCapabilities_Filter(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"code" TEXT,
	_code TEXT,
	op TEXT,
	_op TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_op)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE terminologyCapabilities_Expansion(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	hierarchical BOOLEAN,
	_hierarchical TEXT,
	paging BOOLEAN,
	_paging TEXT,
	incomplete BOOLEAN,
	_incomplete TEXT,
	"parameter" TEXT,
	textFilter TEXT,
	_textFilter TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_hierarchical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paging)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_incomplete)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("parameter")
		REFERENCES terminologyCapabilities_Parameter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_textFilter)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE terminologyCapabilities_Parameter(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	documentation TEXT,
	_documentation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE terminologyCapabilities_ValidateCode(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	translations BOOLEAN,
	_translations TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_translations)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE terminologyCapabilities_Translation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	needsMap BOOLEAN,
	_needsMap TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_needsMap)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE terminologyCapabilities_Closure(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"translation" BOOLEAN,
	_translation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_translation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testReport(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	identifier TEXT,
	"name" TEXT,
	_name TEXT,
	"status" TEXT, --<code> enum: completed/in-progress/waiting/stopped/entered-in-error
	_status TEXT,
	testScript TEXT,
	"result" TEXT, --<code> enum: pass/fail/pending
	_result TEXT,
	score REAL,
	_score TEXT,
	tester TEXT,
	_tester TEXT,
	issued DATETIME,
	_issued TEXT,
	participant TEXT,
	setup TEXT,
	test TEXT,
	teardown TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (testScript)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_result)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_score)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_tester)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issued)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participant)
		REFERENCES testReport_Participant (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (setup)
		REFERENCES testReport_Setup (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (test)
		REFERENCES testReport_Test (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (teardown)
		REFERENCES testReport_Teardown (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testReport_Participant(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT, --<code> enum: test-engine/client/server
	_type TEXT,
	uri TEXT,
	_uri TEXT,
	display TEXT,
	_display TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_uri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testReport_Setup(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"action" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("action")
		REFERENCES testReport_Action (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testReport_Action(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	operation TEXT,
	assert TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (operation)
		REFERENCES testReport_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (assert)
		REFERENCES testReport_Assert (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testReport_Operation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"result" TEXT, --<code> enum: pass/skip/fail/warning/error
	_result TEXT,
	message TEXT,
	_message TEXT,
	detail TEXT,
	_detail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_result)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_message)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detail)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testReport_Assert(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"result" TEXT, --<code> enum: pass/skip/fail/warning/error
	_result TEXT,
	message TEXT,
	_message TEXT,
	detail TEXT,
	_detail TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_result)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_message)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detail)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testReport_Test(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	"description" TEXT,
	_description TEXT,
	"action" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("action")
		REFERENCES testReport_Action1 (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testReport_Action1(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	operation TEXT,
	assert TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (operation)
		REFERENCES testReport_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (assert)
		REFERENCES testReport_Assert (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testReport_Teardown(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"action" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("action")
		REFERENCES testReport_Action2 (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testReport_Action2(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	operation TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (operation)
		REFERENCES testReport_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testScript(

	resourceType TEXT,
	id TEXT PRIMARY KEY,
	meta TEXT,
	implicitRules TEXT,
	_implicitRules TEXT,
	"language" TEXT,
	_language TEXT,
	"text" TEXT,
	contained TEXT,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	identifier TEXT,
	"version" TEXT,
	_version TEXT,
	"name" TEXT,
	_name TEXT,
	title TEXT,
	_title TEXT,
	"status" TEXT, --<code> enum: draft/active/retired/unknown
	_status TEXT,
	experimental BOOLEAN,
	_experimental TEXT,
	"date" DATETIME,
	_date TEXT,
	publisher TEXT,
	_publisher TEXT,
	contact TEXT,
	"description" TEXT,
	_description TEXT,
	useContext TEXT,
	jurisdiction TEXT,
	purpose TEXT,
	_purpose TEXT,
	copyright TEXT,
	_copyright TEXT,
	origin TEXT,
	destination TEXT,
	metadata TEXT,
	fixture TEXT,
	"profile" TEXT,
	variable TEXT,
	setup TEXT,
	test TEXT,
	teardown TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contained)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (useContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (origin)
		REFERENCES testScript_Origin (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (destination)
		REFERENCES testScript_Destination (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (metadata)
		REFERENCES testScript_Metadata (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixture)
		REFERENCES testScript_Fixture (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("profile")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (variable)
		REFERENCES testScript_Variable (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (setup)
		REFERENCES testScript_Setup (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (test)
		REFERENCES testScript_Test (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (teardown)
		REFERENCES testScript_Teardown (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testScript_Origin(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"index" INTEGER,
	_index TEXT,
	"profile" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_index)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("profile")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testScript_Destination(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"index" INTEGER,
	_index TEXT,
	"profile" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_index)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("profile")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testScript_Metadata(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	link TEXT,
	capability TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (link)
		REFERENCES testScript_Link (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (capability)
		REFERENCES testScript_Capability (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testScript_Link(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"url" TEXT,
	_url TEXT,
	"description" TEXT,
	_description TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testScript_Capability(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	required BOOLEAN,
	_required TEXT,
	validated BOOLEAN,
	_validated TEXT,
	"description" TEXT,
	_description TEXT,
	origin INTEGER,
	_origin TEXT,
	destination INTEGER,
	_destination TEXT,
	link TEXT,
	_link TEXT,
	capabilities TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_required)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_validated)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_origin)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_destination)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_link)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testScript_Fixture(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	autocreate BOOLEAN,
	_autocreate TEXT,
	autodelete BOOLEAN,
	_autodelete TEXT,
	resource TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_autocreate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_autodelete)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (resource)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testScript_Variable(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"name" TEXT,
	_name TEXT,
	defaultValue TEXT,
	_defaultValue TEXT,
	"description" TEXT,
	_description TEXT,
	expression TEXT,
	_expression TEXT,
	headerField TEXT,
	_headerField TEXT,
	hint TEXT,
	_hint TEXT,
	"path" TEXT,
	_path TEXT,
	sourceId TEXT,
	_sourceId TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValue)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_headerField)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_hint)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sourceId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testScript_Setup(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"action" TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("action")
		REFERENCES testScript_Action (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testScript_Action(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	operation TEXT,
	assert TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (operation)
		REFERENCES testScript_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (assert)
		REFERENCES testScript_Assert (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION
);

CREATE TABLE testScript_Operation(

	id TEXT PRIMARY KEY,
	extension TEXT,
	modifierExtension TEXT,
	"type" TEXT,
	resource TEXT,
	_resource TEXT,
	label TEXT,
	_label TEXT,
	"description" TEXT,
	_description TEXT,
	accept TEXT,
	_accept TEXT,
	contentType TEXT,
	_contentType TEXT,
	destination INTEGER,
	_destination TEXT,
	encodeRequestUrl BOOLEAN,
	_encodeRequestUrl TEXT,
	"method" TEXT, --<code> enum: delete/get/options/patch/post/put/head
	_method TEXT,
	origin INTEGER,
	_origin TEXT,
	params TEXT,
	_params TEXT,
	requestHeader TEXT,
	requestId TEXT,
	_requestId TEXT,
	responseId TEXT,
	_responseId TEXT,
	sourceId TEXT,
	_sourceId TEXT,
	targetId TEXT,
	_targetId TEXT,
	"url" TEXT,
	_url TEXT,

	FOREIGN KEY (extension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modifierExtension)
		REFERENCES extension (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_resource)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_label)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_accept)
		REFERENCES element (id)
			ON DELETE CASCADE









