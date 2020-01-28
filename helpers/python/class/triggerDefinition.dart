part 'triggerDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class TriggerDefinition {

String id;
List<Extension> extension;
String type; // <code> enum: named-event/periodic/data-changed/data-added/data-modified/data-removed/data-accessed/data-access-ended;
Element _type;
String name;
Element _name;
Timing timingTiming;
Reference timingReference;
String timingDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _timingDate;
String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _timingDateTime;
List<DataRequirement> data;
Expression condition;

TriggerDefinition(
  {this.id,
      this.extension,
      this.type,
      this._type,
      this.name,
      this._name,
      this.timingTiming,
      this.timingReference,
      this.timingDate,
      this._timingDate,
      this.timingDateTime,
      this._timingDateTime,
      this.data,
      this.condition,
      });

  factory TriggerDefinition.fromJson(Map<String, dynamic> json) => _$TriggerDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$TriggerDefinitionToJson(this);
}

