part 'prodCharacteristic.g.dart';

@JsonSerializable(explicitToJson: true)
class ProdCharacteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity height;
Quantity width;
Quantity depth;
Quantity weight;
Quantity nominalVolume;
Quantity externalDiameter;
String shape;
Element _shape;
List<String> color;
List<Element> _color;
List<String> imprint;
List<Element> _imprint;
List<Attachment> image;
CodeableConcept scoring;

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
      this.scoring,
      });

  factory ProdCharacteristic.fromJson(Map<String, dynamic> json) => _$ProdCharacteristicFromJson(json);
  Map<String, dynamic> toJson() _$ProdCharacteristicToJson(this);
}

