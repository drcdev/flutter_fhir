part 'enrollmentRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class EnrollmentRequest {

EnrollmentRequest resourceType;
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
List<Identifier> identifier;
String status;
Element _status;
DateTime created;
Element _created;
Reference insurer;
Reference provider;
Reference candidate;
Reference coverage;

EnrollmentRequest(
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
      this.status,
      this._status,
      this.created,
      this._created,
      this.insurer,
      this.provider,
      this.candidate,
      this.coverage,
      });

  factory EnrollmentRequest.fromJson(Map<String, dynamic> json) => _$EnrollmentRequestFromJson(json);
  Map<String, dynamic> toJson() _$EnrollmentRequestToJson(this);
}

