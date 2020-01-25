

part 'medicinalProduct_NamePart.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_NamePart {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String part;
  Element _part;
  Coding type;


MedicinalProduct_NamePart(
      {this.id,
this.extension,
this.modifierExtension,
this.part,
this._part,
this.type});

  factory MedicinalProduct_NamePart.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_NamePartFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_NamePartToJson(this);
}