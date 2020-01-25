

part 'triggerDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class TriggerDefinition {

  String id;
  List<Extension> extension;
  enum: named-eventperiodicdata-changeddata-addeddata-modifieddata-removeddata-accesseddata-access-ended type;
  Element _type;
  String name;
  Element _name;
  Timing timingTiming;
  Reference timingReference;
  String timingDate;
  Element _timingDate;
  String timingDateTime;
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
this.condition});

  factory TriggerDefinition.fromJson(Map<String, dynamic> json) => _$TriggerDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$TriggerDefinitionToJson(this);
}