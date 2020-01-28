part 'duration.g.dart';

@JsonSerializable(explicitToJson: true)
class Duration {

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

Duration(
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

  factory Duration.fromJson(Map<String, dynamic> json) => _$DurationFromJson(json);
  Map<String, dynamic> toJson() _$DurationToJson(this);
}

