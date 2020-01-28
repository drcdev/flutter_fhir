part 'reference.g.dart';

@JsonSerializable(explicitToJson: true)
class Reference {

String id;
List<Extension> extension;
String reference;
Element _reference;
String type;
Element _type;
Identifier identifier;
String display;
Element _display;

Reference(
  {this.id,
      this.extension,
      this.reference,
      this._reference,
      this.type,
      this._type,
      this.identifier,
      this.display,
      this._display,
      });

  factory Reference.fromJson(Map<String, dynamic> json) => _$ReferenceFromJson(json);
  Map<String, dynamic> toJson() _$ReferenceToJson(this);
}

