

part 'element.g.dart';

@JsonSerializable(explicitToJson: true)
class Element {

  String id;
  List<Extension> extension;


Element(
      {this.id,
this.extension});

  factory Element.fromJson(Map<String, dynamic> json) => _$ElementFromJson(json);
  Map<String, dynamic> toJson() => _$ElementToJson(this);
}