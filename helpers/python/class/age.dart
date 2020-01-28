part 'age.g.dart';

@JsonSerializable(explicitToJson: true)
class Age {

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

Age(
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

  factory Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);
  Map<String, dynamic> toJson() _$AgeToJson(this);
}

