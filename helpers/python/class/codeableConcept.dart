
part 'codeableConcept.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeableConcept {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // A reference to a code defined by a terminology system.
  List<Coding coding;

  // A human language representation of the concept as seen/selected/uttered by
  //  the user who entered the data and/or which represents the intended meaning of
  //  the user.
  String text;

  // Extensions for text
  Element _text
CodeableConcept(
      {this.id,
this.extension,
this.coding,
this.text,
this._text});

  factory CodeableConcept.fromJson(Map<String, dynamic> json) => _$CodeableConceptFromJson(json);
  Map<String, dynamic> toJson() => _$CodeableConceptToJson(this);
}
