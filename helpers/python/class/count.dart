
part 'count.g.dart';

@JsonSerializable(explicitToJson: true)
class Count {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // The value of the measured amount. The value includes an implicit precision
  //  in the presentation of the value.
  double value;

  // Extensions for value
  Element _value;

  // How the value should be understood and represented - whether the actual
  //  value is greater or less than the stated value due to measurement issues; e.g.
  //  if the comparator is "<" , then the real value is < stated value.Enum enum; //
  //  <<=>=> comparator;

  // Extensions for comparator
  Element _comparator;

  // A human-readable form of the unit.
  String unit;

  // Extensions for unit
  Element _unit;

  // The identification of the system that provides the coded form of the unit.
  String system;

  // Extensions for system
  Element _system;

  // A computer processable form of the unit in some unit representation system.
  String code;

  // Extensions for code
  Element _code
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
this._code});

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
  Map<String, dynamic> toJson() => _$CountToJson(this);
}
