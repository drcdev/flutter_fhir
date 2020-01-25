

part 'implementationGuide_Resource.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Resource {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference reference;
  array fhirVersion;
  List<Element> _fhirVersion;
  String name;
  Element _name;
  String description;
  Element _description;
  bool exampleBoolean;
  Element _exampleBoolean;
  String exampleCanonical;
  Element _exampleCanonical;
  String groupingId;
  Element _groupingId;


ImplementationGuide_Resource(
      {this.id,
this.extension,
this.modifierExtension,
this.reference,
this.fhirVersion,
this._fhirVersion,
this.name,
this._name,
this.description,
this._description,
this.exampleBoolean,
this._exampleBoolean,
this.exampleCanonical,
this._exampleCanonical,
this.groupingId,
this._groupingId});

  factory ImplementationGuide_Resource.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_ResourceToJson(this);
}