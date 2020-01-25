

part 'substanceAmount_ReferenceRange.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceAmount_ReferenceRange {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity lowLimit;
  Quantity highLimit;


SubstanceAmount_ReferenceRange(
      {this.id,
this.extension,
this.modifierExtension,
this.lowLimit,
this.highLimit});

  factory SubstanceAmount_ReferenceRange.fromJson(Map<String, dynamic> json) => _$SubstanceAmount_ReferenceRangeFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceAmount_ReferenceRangeToJson(this);
}