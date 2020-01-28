part 'quantity.g.dart';

@JsonSerializable(explicitToJson: true)
class Quantity {

String id;
List<Extension> extension;
double value;
Element _value;
String comparator; // <code> enum: </<=/>=/>;
Element _comparator;
String unit;
Element _unit;
String system;
Element _system;
String code;
Element _code;

Quantity(
  {this.id,
      this.extension,
      this.value,
      this._value,
      this.comparator,
      this._comparator,
      this.unit,
      this._unit,
      this.system,
      this._system,
      this.code,
      this._code,
      });

  factory Quantity.fromJson(Map<String, dynamic> json) => _$QuantityFromJson(json);
  Map<String, dynamic> toJson() _$QuantityToJson(this);
}

