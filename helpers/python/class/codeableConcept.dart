part 'codeableConcept.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeableConcept {

String id;
List<Extension> extension;
List<Coding> coding;
String text;
Element _text;

CodeableConcept(
  {this.id,
      this.extension,
      this.coding,
      this.text,
      this._text,
      });

  factory CodeableConcept.fromJson(Map<String, dynamic> json) => _$CodeableConceptFromJson(json);
  Map<String, dynamic> toJson() _$CodeableConceptToJson(this);
}

