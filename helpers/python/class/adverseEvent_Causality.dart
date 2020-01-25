

part 'adverseEvent_Causality.g.dart';

@JsonSerializable(explicitToJson: true)
class AdverseEvent_Causality {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept assessment;
  String productRelatedness;
  Element _productRelatedness;
  Reference author;
  CodeableConcept method;


AdverseEvent_Causality(
      {this.id,
this.extension,
this.modifierExtension,
this.assessment,
this.productRelatedness,
this._productRelatedness,
this.author,
this.method});

  factory AdverseEvent_Causality.fromJson(Map<String, dynamic> json) => _$AdverseEvent_CausalityFromJson(json);
  Map<String, dynamic> toJson() => _$AdverseEvent_CausalityToJson(this);
}