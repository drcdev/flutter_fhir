

part 'humanName.g.dart';

@JsonSerializable(explicitToJson: true)
class HumanName {

  String id;
  List<Extension> extension;
  enum: usualofficialtempnicknameanonymousoldmaiden use;
  Element _use;
  String text;
  Element _text;
  String family;
  Element _family;
  List<String> given;
  List<Element> _given;
  List<String> prefix;
  List<Element> _prefix;
  List<String> suffix;
  List<Element> _suffix;
  Period period;


HumanName(
      {this.id,
this.extension,
this.use,
this._use,
this.text,
this._text,
this.family,
this._family,
this.given,
this._given,
this.prefix,
this._prefix,
this.suffix,
this._suffix,
this.period});

  factory HumanName.fromJson(Map<String, dynamic> json) => _$HumanNameFromJson(json);
  Map<String, dynamic> toJson() => _$HumanNameToJson(this);
}