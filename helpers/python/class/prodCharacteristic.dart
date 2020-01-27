
part 'prodCharacteristic.g.dart';

@JsonSerializable(explicitToJson: true)
class ProdCharacteristic {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Where applicable, the height can be specified using a numerical value and
  //  its unit of measurement The unit of measurement shall be specified in
  //  accordance with ISO 11240 and the resulting terminology The symbol and the
  //  symbol identifier shall be used.
  Quantity height;

  // Where applicable, the width can be specified using a numerical value and
  //  its unit of measurement The unit of measurement shall be specified in
  //  accordance with ISO 11240 and the resulting terminology The symbol and the
  //  symbol identifier shall be used.
  Quantity width;

  // Where applicable, the depth can be specified using a numerical value and
  //  its unit of measurement The unit of measurement shall be specified in
  //  accordance with ISO 11240 and the resulting terminology The symbol and the
  //  symbol identifier shall be used.
  Quantity depth;

  // Where applicable, the weight can be specified using a numerical value and
  //  its unit of measurement The unit of measurement shall be specified in
  //  accordance with ISO 11240 and the resulting terminology The symbol and the
  //  symbol identifier shall be used.
  Quantity weight;

  // Where applicable, the nominal volume can be specified using a numerical
  //  value and its unit of measurement The unit of measurement shall be specified in
  //  accordance with ISO 11240 and the resulting terminology The symbol and the
  //  symbol identifier shall be used.
  Quantity nominalVolume;

  // Where applicable, the external diameter can be specified using a numerical
  //  value and its unit of measurement The unit of measurement shall be specified in
  //  accordance with ISO 11240 and the resulting terminology The symbol and the
  //  symbol identifier shall be used.
  Quantity externalDiameter;

  // Where applicable, the shape can be specified An appropriate controlled
  //  vocabulary shall be used The term and the term identifier shall be used.
  String shape;

  // Extensions for shape
  Element _shape;

  // Where applicable, the color can be specified An appropriate controlled
  //  vocabulary shall be used The term and the term identifier shall be used.
  List<String color;

  // Extensions for color
  List<Element _color;

  // Where applicable, the imprint can be specified as text.
  List<String imprint;

  // Extensions for imprint
  List<Element _imprint;

  // Where applicable, the image can be provided The format of the image
  //  attachment shall be specified by regional implementations.
  List<Attachment image;

  // Where applicable, the scoring can be specified An appropriate controlled
  //  vocabulary shall be used The term and the term identifier shall be used.
  CodeableConcept scoring
ProdCharacteristic(
      {this.id,
this.extension,
this.modifierExtension,
this.height,
this.width,
this.depth,
this.weight,
this.nominalVolume,
this.externalDiameter,
this.shape,
this._shape,
this.color,
this._color,
this.imprint,
this._imprint,
this.image,
this.scoring});

  factory ProdCharacteristic.fromJson(Map<String, dynamic> json) => _$ProdCharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$ProdCharacteristicToJson(this);
}
