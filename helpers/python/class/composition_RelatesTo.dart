

part 'composition_RelatesTo.g.dart';

@JsonSerializable(explicitToJson: true)
class Composition_RelatesTo {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  Identifier targetIdentifier;
  Reference targetReference;


Composition_RelatesTo(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.targetIdentifier,
this.targetReference});

  factory Composition_RelatesTo.fromJson(Map<String, dynamic> json) => _$Composition_RelatesToFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_RelatesToToJson(this);
}