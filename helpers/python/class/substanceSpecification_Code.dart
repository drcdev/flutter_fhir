

part 'substanceSpecification_Code.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Code {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  CodeableConcept status;
  StringTime statusDate;
  Element _statusDate;
  String comment;
  Element _comment;
  List<Reference> source;


SubstanceSpecification_Code(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.status,
this.statusDate,
this._statusDate,
this.comment,
this._comment,
this.source});

  factory SubstanceSpecification_Code.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_CodeFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_CodeToJson(this);
}