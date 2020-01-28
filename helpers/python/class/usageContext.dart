part 'usageContext.g.dart';

@JsonSerializable(explicitToJson: true)
class UsageContext {

String id;
List<Extension> extension;
Coding code;
CodeableConcept valueCodeableConcept;
Quantity valueQuantity;
Range valueRange;
Reference valueReference;

UsageContext(
  {this.id,
      this.extension,
      this.code,
      this.valueCodeableConcept,
      this.valueQuantity,
      this.valueRange,
      this.valueReference,
      });

  factory UsageContext.fromJson(Map<String, dynamic> json) => _$UsageContextFromJson(json);
  Map<String, dynamic> toJson() _$UsageContextToJson(this);
}

