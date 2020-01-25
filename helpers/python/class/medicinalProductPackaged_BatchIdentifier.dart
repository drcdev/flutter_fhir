

part 'medicinalProductPackaged_BatchIdentifier.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductPackaged_BatchIdentifier {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier outerPackaging;
  Identifier immediatePackaging;


MedicinalProductPackaged_BatchIdentifier(
      {this.id,
this.extension,
this.modifierExtension,
this.outerPackaging,
this.immediatePackaging});

  factory MedicinalProductPackaged_BatchIdentifier.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackaged_BatchIdentifierFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPackaged_BatchIdentifierToJson(this);
}