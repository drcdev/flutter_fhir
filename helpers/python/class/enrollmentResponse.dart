

part 'enrollmentResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class EnrollmentResponse {

  This is a EnrollmentResponse resource resourceType;
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
  Reference request;
  enum: queuedcompleteerrorpartial outcome;
  Element _outcome;
  String disposition;
  Element _disposition;
  StringTime created;
  Element _created;
  Reference organization;
  Reference requestProvider;


EnrollmentResponse(
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
this.request,
this.outcome,
this._outcome,
this.disposition,
this._disposition,
this.created,
this._created,
this.organization,
this.requestProvider});

  factory EnrollmentResponse.fromJson(Map<String, dynamic> json) => _$EnrollmentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$EnrollmentResponseToJson(this);
}