

part 'bundle_Entry.g.dart';

@JsonSerializable(explicitToJson: true)
class Bundle_Entry {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Bundle_Link> link;
  String fullUrl;
  Element _fullUrl;
  ResourceList resource;
  Bundle_Search search;
  Bundle_Request request;
  Bundle_Response response;


Bundle_Entry(
      {this.id,
this.extension,
this.modifierExtension,
this.link,
this.fullUrl,
this._fullUrl,
this.resource,
this.search,
this.request,
this.response});

  factory Bundle_Entry.fromJson(Map<String, dynamic> json) => _$Bundle_EntryFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_EntryToJson(this);
}