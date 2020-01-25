

part 'contactPoint.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactPoint {

  String id;
  List<Extension> extension;
  enum: phonefaxemailpagerurlsmsother system;
  Element _system;
  String value;
  Element _value;
  enum: homeworktempoldmobile use;
  Element _use;
  int rank;
  Element _rank;
  Period period;


ContactPoint(
      {this.id,
this.extension,
this.system,
this._system,
this.value,
this._value,
this.use,
this._use,
this.rank,
this._rank,
this.period});

  factory ContactPoint.fromJson(Map<String, dynamic> json) => _$ContactPointFromJson(json);
  Map<String, dynamic> toJson() => _$ContactPointToJson(this);
}