

part 'substanceSpecification_Official.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Official {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept authority;
  CodeableConcept status;
  StringTime date;
  Element _date;


SubstanceSpecification_Official(
      {this.id,
this.extension,
this.modifierExtension,
this.authority,
this.status,
this.date,
this._date});

  factory SubstanceSpecification_Official.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_OfficialFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_OfficialToJson(this);
}