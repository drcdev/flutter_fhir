part 'guidanceResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class GuidanceResponse {

GuidanceResponse resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier requestIdentifier;
List<Identifier> identifier;
String moduleUri; //  pattern: ^\S*$
Element _moduleUri;
String moduleCanonical; //  pattern: ^\S*$
Element _moduleCanonical;
CodeableConcept moduleCodeableConcept;
String status; // <code> enum: success/data-requested/data-required/in-progress/failure/entered-in-error;
Element _status;
Reference subject;
Reference encounter;
DateTime occurrenceDateTime;
Element _occurrenceDateTime;
Reference performer;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Annotation> note;
List<Reference> evaluationMessage;
Reference outputParameters;
Reference result;
List<DataRequirement> dataRequirement;

GuidanceResponse(
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
      this.requestIdentifier,
      this.identifier,
      this.moduleUri,
      this._moduleUri,
      this.moduleCanonical,
      this._moduleCanonical,
      this.moduleCodeableConcept,
      this.status,
      this._status,
      this.subject,
      this.encounter,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.performer,
      this.reasonCode,
      this.reasonReference,
      this.note,
      this.evaluationMessage,
      this.outputParameters,
      this.result,
      this.dataRequirement,
      });

  factory GuidanceResponse.fromJson(Map<String, dynamic> json) => _$GuidanceResponseFromJson(json);
  Map<String, dynamic> toJson() _$GuidanceResponseToJson(this);
}

