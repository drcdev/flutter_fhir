

part 'questionnaireResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse {

  This is a QuestionnaireResponse resource resourceType;
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
  Identifier identifier;
  List<Reference> basedOn;
  List<Reference> partOf;
  String questionnaire;
  enum: in-progresscompletedamendedentered-in-errorstopped status;
  Element _status;
  Reference subject;
  Reference encounter;
  StringTime authored;
  Element _authored;
  Reference author;
  Reference source;
  List<QuestionnaireResponse_Item> item;


QuestionnaireResponse(
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
this.partOf,
this.questionnaire,
this.status,
this._status,
this.subject,
this.encounter,
this.authored,
this._authored,
this.author,
this.source,
this.item});

  factory QuestionnaireResponse.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponseFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireResponseToJson(this);
}