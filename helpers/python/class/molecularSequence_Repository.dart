

part 'molecularSequence_Repository.g.dart';

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Repository {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: directlinkopenapiloginoauthother type;
  Element _type;
  String url;
  Element _url;
  String name;
  Element _name;
  String datasetId;
  Element _datasetId;
  String variantsetId;
  Element _variantsetId;
  String readsetId;
  Element _readsetId;


MolecularSequence_Repository(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.url,
this._url,
this.name,
this._name,
this.datasetId,
this._datasetId,
this.variantsetId,
this._variantsetId,
this.readsetId,
this._readsetId});

  factory MolecularSequence_Repository.fromJson(Map<String, dynamic> json) => _$MolecularSequence_RepositoryFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_RepositoryToJson(this);
}