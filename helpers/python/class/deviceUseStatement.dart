
part 'deviceUseStatement.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceUseStatement {
  
  // This is a DeviceUseStatement 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // An external identifier for this statement such as an IRI.
  List<Identifier identifier;

  // A plan, proposal or order that is fulfilled in whole or in part by this
  //  DeviceUseStatement.
  List<Reference basedOn;

  // A code representing the patient or other source's judgment about the state
  //  of the device used that this statement is about.  Generally this will be active
  //  or completed.Enum enum; //
  //  activecompletedentered-in-errorintendedstoppedon-hold status;

  // Extensions for status
  Element _status;

  // The patient who used the device.
  Reference subject;

  // Allows linking the DeviceUseStatement to the underlying Request, or to
  //  other information that supports or is used to derive the DeviceUseStatement.
  List<Reference derivedFrom;

  // How often the device was used.
  Timing timingTiming;

  // How often the device was used.
  Period timingPeriod;

  // How often the device was used. string timingDateTime;

  // Extensions for timingDateTime
  Element _timingDateTime;

  // The time at which the statement was made/recorded.
  StringTime recordedOn;

  // Extensions for recordedOn
  Element _recordedOn;

  // Who reported the device was being used by the patient.
  Reference source;

  // The details of the device used.
  Reference device;

  // Reason or justification for the use of the device.
  List<CodeableConcept reasonCode;

  // Indicates another resource whose existence justifies this
  //  DeviceUseStatement.
  List<Reference reasonReference;

  // Indicates the anotomic location on the subject's body where the device was
  //  used ( i.e. the target).
  CodeableConcept bodySite;

  // Details about the device statement that were not represented at all or
  //  sufficiently in one of the attributes provided in a class. These may include
  //  for example a comment, an instruction, or a note associated with the statement.
  List<Annotation note
DeviceUseStatement(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.identifier,
this.basedOn,
this.status,
this._status,
this.subject,
this.derivedFrom,
this.timingTiming,
this.timingPeriod,
this.timingDateTime,
this._timingDateTime,
this.recordedOn,
this._recordedOn,
this.source,
this.device,
this.reasonCode,
this.reasonReference,
this.bodySite,
this.note});

  factory DeviceUseStatement.fromJson(Map<String, dynamic> json) => _$DeviceUseStatementFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceUseStatementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_DeviceName {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The name of the device.
  String name;

  // Extensions for name
  Element _name;

  // The type of deviceName.
  UDILabelName | UserFriendlyName | PatientReportedName | ManufactureDeviceName
  //  | ModelName.Enum enum; //
  //  udi-label-nameuser-friendly-namepatient-reported-namemanufacturer-namemodel-nameother type;

  // Extensions for type
  Element _type
Device_DeviceName(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.type,
this._type});

  factory Device_DeviceName.fromJson(Map<String, dynamic> json) => _$Device_DeviceNameFromJson(json);
  Map<String, dynamic> toJson() => _$Device_DeviceNameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_Property {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Code that specifies the property DeviceDefinitionPropetyCode (Extensible).
  CodeableConcept type;

  // Property value as a quantity.
  List<Quantity valueQuantity;

  // Property value as a code, e.g., NTP4 (synced to NTP).
  List<CodeableConcept valueCode
Device_Property(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.valueQuantity,
this.valueCode});

  factory Device_Property.fromJson(Map<String, dynamic> json) => _$Device_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$Device_PropertyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_Specialization {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The standard that is used to operate and communicate.
  CodeableConcept systemType;

  // The version of the standard that is used to operate and communicate.
  String version;

  // Extensions for version
  Element _version
Device_Specialization(
      {this.id,
this.extension,
this.modifierExtension,
this.systemType,
this.version,
this._version});

  factory Device_Specialization.fromJson(Map<String, dynamic> json) => _$Device_SpecializationFromJson(json);
  Map<String, dynamic> toJson() => _$Device_SpecializationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_UdiCarrier {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The device identifier (DI) is a mandatory, fixed portion of a UDI that
  //  identifies the labeler and the specific version or model of a device.
  String deviceIdentifier;

  // Extensions for deviceIdentifier
  Element _deviceIdentifier;

  // Organization that is charged with issuing UDIs for devices.  For example,
  //  the US FDA issuers include :
1) GS1: 
http://hl7.org/fhir/NamingSystem/gs1-di, 
2) HIBCC:
http://hl7.org/fhir/NamingSystem/hibcc-dI, 
3) ICCBBA for blood containers:
http://hl7.org/fhir/NamingSystem/iccbba-blood-di, 
4) ICCBA for other devices:
http://hl7.org/fhir/NamingSystem/iccbba-other-di.
  String issuer;

  // Extensions for issuer
  Element _issuer;

  // The identity of the authoritative source for UDI generation within a 
  //  jurisdiction.  All UDIs are globally unique within a single namespace with the
  //  appropriate repository uri as the system.  For example,  UDIs of devices
  //  managed in the U.S. by the FDA, the value is  http://hl7.org/fhir/NamingSystem/fda-udi.
  String jurisdiction;

  // Extensions for jurisdiction
  Element _jurisdiction;

  // The full UDI carrier of the Automatic Identification and Data Capture
  //  (AIDC) technology representation of the barcode string as printed on the
  //  packaging of the device - e.g., a barcode or RFID.   Because of limitations on
  //  character sets in XML and the need to round-trip JSON data through XML, AIDC
  //  Formats *SHALL* be base64 encoded.
  String carrierAIDC;

  // Extensions for carrierAIDC
  Element _carrierAIDC;

  // The full UDI carrier as the human readable form (HRF) representation of the
  //  barcode string as printed on the packaging of the device.
  String carrierHRF;

  // Extensions for carrierHRF
  Element _carrierHRF;

  // A coded entry to indicate how the data was entered.Enum enum; //
  //  barcoderfidmanualcardself-reportedunknown entryType;

  // Extensions for entryType
  Element _entryType
Device_UdiCarrier(
      {this.id,
this.extension,
this.modifierExtension,
this.deviceIdentifier,
this._deviceIdentifier,
this.issuer,
this._issuer,
this.jurisdiction,
this._jurisdiction,
this.carrierAIDC,
this._carrierAIDC,
this.carrierHRF,
this._carrierHRF,
this.entryType,
this._entryType});

  factory Device_UdiCarrier.fromJson(Map<String, dynamic> json) => _$Device_UdiCarrierFromJson(json);
  Map<String, dynamic> toJson() => _$Device_UdiCarrierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_Version {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The type of the device version.
  CodeableConcept type;

  // A single component of the device version.
  Identifier component;

  // The version text.
  String value;

  // Extensions for value
  Element _value
Device_Version(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.component,
this.value,
this._value});

  factory Device_Version.fromJson(Map<String, dynamic> json) => _$Device_VersionFromJson(json);
  Map<String, dynamic> toJson() => _$Device_VersionToJson(this);
}
