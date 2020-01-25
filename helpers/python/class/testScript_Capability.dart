

part 'testScript_Capability.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Capability {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool required;
  Element _required;
  bool validated;
  Element _validated;
  String description;
  Element _description;
  List<int> origin;
  List<Element> _origin;
  int destination;
  Element _destination;
  List<String> link;
  List<Element> _link;
  String capabilities;


TestScript_Capability(
      {this.id,
this.extension,
this.modifierExtension,
this.required,
this._required,
this.validated,
this._validated,
this.description,
this._description,
this.origin,
this._origin,
this.destination,
this._destination,
this.link,
this._link,
this.capabilities});

  factory TestScript_Capability.fromJson(Map<String, dynamic> json) => _$TestScript_CapabilityFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_CapabilityToJson(this);
}