

part 'implementationGuide_Page.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Page {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String nameUrl;
  Element _nameUrl;
  Reference nameReference;
  String title;
  Element _title;
  enum: htmlmarkdownxmlgenerated generation;
  Element _generation;
  List<ImplementationGuide_Page> page;


ImplementationGuide_Page(
      {this.id,
this.extension,
this.modifierExtension,
this.nameUrl,
this._nameUrl,
this.nameReference,
this.title,
this._title,
this.generation,
this._generation,
this.page});

  factory ImplementationGuide_Page.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_PageFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_PageToJson(this);
}