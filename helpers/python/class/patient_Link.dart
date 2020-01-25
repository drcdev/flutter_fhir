

part 'patient_Link.g.dart';

@JsonSerializable(explicitToJson: true)
class Patient_Link {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference other;
  enum: replaced-byreplacesreferseealso type;
  Element _type;


Patient_Link(
      {this.id,
this.extension,
this.modifierExtension,
this.other,
this.type,
this._type});

  factory Patient_Link.fromJson(Map<String, dynamic> json) => _$Patient_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$Patient_LinkToJson(this);
}