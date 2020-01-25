

part 'operationDefinition_ReferencedFrom.g.dart';

@JsonSerializable(explicitToJson: true)
class OperationDefinition_ReferencedFrom {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String source;
  Element _source;
  String sourceId;
  Element _sourceId;


OperationDefinition_ReferencedFrom(
      {this.id,
this.extension,
this.modifierExtension,
this.source,
this._source,
this.sourceId,
this._sourceId});

  factory OperationDefinition_ReferencedFrom.fromJson(Map<String, dynamic> json) => _$OperationDefinition_ReferencedFromFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_ReferencedFromToJson(this);
}