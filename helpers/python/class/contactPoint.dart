part 'contactPoint.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactPoint {

String id;
List<Extension> extension;
String system; // <code> enum: phone/fax/email/pager/url/sms/other;
Element _system;
String value;
Element _value;
String use; // <code> enum: home/work/temp/old/mobile;
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
      this.period,
      });

  factory ContactPoint.fromJson(Map<String, dynamic> json) => _$ContactPointFromJson(json);
  Map<String, dynamic> toJson() _$ContactPointToJson(this);
}

