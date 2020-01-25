

part 'documentReference_RelatesTo.g.dart';

@JsonSerializable(explicitToJson: true)
class DocumentReference_RelatesTo {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: replacestransformssignsappends code;
  Element _code;
  Reference target;


DocumentReference_RelatesTo(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.target});

  factory DocumentReference_RelatesTo.fromJson(Map<String, dynamic> json) => _$DocumentReference_RelatesToFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_RelatesToToJson(this);
}