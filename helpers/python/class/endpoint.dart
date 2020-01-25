

part 'endpoint.g.dart';

@JsonSerializable(explicitToJson: true)
class Endpoint {

  This is a Endpoint resource resourceType;
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
  enum: activesuspendederroroffentered-in-errortest status;
  Element _status;
  Coding connectionType;
  String name;
  Element _name;
  Reference managingOrganization;
  List<ContactPoint> contact;
  Period period;
  List<CodeableConcept> payloadType;
  List<String> payloadMimeType;
  List<Element> _payloadMimeType;
  String address;
  Element _address;
  List<String> header;
  List<Element> _header;


Endpoint(
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
this.connectionType,
this.name,
this._name,
this.managingOrganization,
this.contact,
this.period,
this.payloadType,
this.payloadMimeType,
this._payloadMimeType,
this.address,
this._address,
this.header,
this._header});

  factory Endpoint.fromJson(Map<String, dynamic> json) => _$EndpointFromJson(json);
  Map<String, dynamic> toJson() => _$EndpointToJson(this);
}