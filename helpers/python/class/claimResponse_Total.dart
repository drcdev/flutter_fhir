

part 'claimResponse_Total.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Total {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  Money amount;


ClaimResponse_Total(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this.amount});

  factory ClaimResponse_Total.fromJson(Map<String, dynamic> json) => _$ClaimResponse_TotalFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_TotalToJson(this);
}