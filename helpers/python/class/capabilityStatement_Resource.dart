

part 'capabilityStatement_Resource.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Resource {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element _type;
  String profile;
  List<String> supportedProfile;
  String documentation;
  Element _documentation;
  List<CapabilityStatement_Interaction> interaction;
  enum: no-versionversionedversioned-update versioning;
  Element _versioning;
  bool readHistory;
  Element _readHistory;
  bool updateCreate;
  Element _updateCreate;
  bool conditionalCreate;
  Element _conditionalCreate;
  enum: not-supportedmodified-sincenot-matchfull-support conditionalRead;
  Element _conditionalRead;
  bool conditionalUpdate;
  Element _conditionalUpdate;
  enum: not-supportedsinglemultiple conditionalDelete;
  Element _conditionalDelete;
  array referencePolicy;
  List<Element> _referencePolicy;
  List<String> searchInclude;
  List<Element> _searchInclude;
  List<String> searchRevInclude;
  List<Element> _searchRevInclude;
  List<CapabilityStatement_SearchParam> searchParam;
  List<CapabilityStatement_Operation> operation;


CapabilityStatement_Resource(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.profile,
this.supportedProfile,
this.documentation,
this._documentation,
this.interaction,
this.versioning,
this._versioning,
this.readHistory,
this._readHistory,
this.updateCreate,
this._updateCreate,
this.conditionalCreate,
this._conditionalCreate,
this.conditionalRead,
this._conditionalRead,
this.conditionalUpdate,
this._conditionalUpdate,
this.conditionalDelete,
this._conditionalDelete,
this.referencePolicy,
this._referencePolicy,
this.searchInclude,
this._searchInclude,
this.searchRevInclude,
this._searchRevInclude,
this.searchParam,
this.operation});

  factory CapabilityStatement_Resource.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_ResourceToJson(this);
}