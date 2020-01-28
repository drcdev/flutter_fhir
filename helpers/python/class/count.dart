part 'count.g.dart';

@JsonSerializable(explicitToJson: true)
class Count {

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

Count(
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

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
  Map<String, dynamic> toJson() _$CountToJson(this);
}

